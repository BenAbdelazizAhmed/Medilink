import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:op/Medical_Record.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class Medical_RecordsPage1 extends StatefulWidget {
  const Medical_RecordsPage1({super.key});

  @override
  State<Medical_RecordsPage1> createState() => _Medical_RecordsPage1State();
}

class _Medical_RecordsPage1State extends State<Medical_RecordsPage1> {
   List<types.Message> _messages = [];
  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );
   void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleAttachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => SafeArea(
        child: Container(
          height: 144.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleImageSelection();
                },
                child:  Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Row(
                    children: [
                      Icon(Icons.camera_alt),
                      SizedBox(width: 15.w,),
                      Text('Photo'),
                      
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleFileSelection();

                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('File'),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Cancel'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

void _showSuccessDialog(String message) {
    showDialog(
      context: context,
      
      builder: (BuildContext context) {
        return AlertDialog(
          
          backgroundColor: Colors.white, 
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: Container(
            height: 300.h,
            width: 450.w,
            child:Column(children: [
              Text('Thank you!'),
SizedBox(height:ScreenUtil().setHeight(20),),
Text('On your computer, go to drive.google.com. At the left, click Shared drives and double-click one of your shared drives. At the top left,')
             , 
             
             SizedBox(height:ScreenUtil().setHeight(30),),

              GestureDetector(
                onTap:(){
                       Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => medical_record()),
      );
                },
                child: Container(
                    margin:EdgeInsets.only(left: ScreenUtil().setWidth(20),right: ScreenUtil().setWidth(20)),
                    
                    height: 50.h,
                    decoration:BoxDecoration(
                                color:Color(0xff0099E5) ,
                                borderRadius: BorderRadius.circular(10)
                    ),
                  width: 300.w,
                  child:Center(child:Text('Done',style:TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize:20.sp),),),
                  ),
              ),
            ],)
          ),
        );
      },
    );

    Future.delayed(Duration(seconds: 10), () {
      Navigator.of(context).pop();
    });
  }void _handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null && result.files.single.path != null) {
                  _showSuccessDialog('Photo sélectionnée avec succès');

      final message = types.FileMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        mimeType: lookupMimeType(result.files.single.path!),
        name: result.files.single.name,
        size: result.files.single.size,
        uri: result.files.single.path!,
      );

      _addMessage(message);
    }
  }

  void _handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
            _showSuccessDialog('Photo sélectionnée avec succès');

      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      final message = types.ImageMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        height: image.height.toDouble(),
        id: const Uuid().v4(),
        name: result.name,
        size: bytes.length,
        uri: result.path,
        width: image.width.toDouble(),
      );

      _addMessage(message);
    }
  }

  void _handleMessageTap(BuildContext _, types.Message message) async {
    if (message is types.FileMessage) {
      var localPath = message.uri;

      if (message.uri.startsWith('http')) {
        try {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: true,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });

          final client = http.Client();
          final request = await client.get(Uri.parse(message.uri));
          final bytes = request.bodyBytes;
          final documentsDir = (await getApplicationDocumentsDirectory()).path;
          localPath = '$documentsDir/${message.name}';

          if (!File(localPath).existsSync()) {
            final file = File(localPath);
            await file.writeAsBytes(bytes);
          }
        } finally {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: null,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });
        }
      }

      await OpenFilex.open(localPath);
    }
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (_messages[index] as types.TextMessage).copyWith(
      previewData: previewData,
    );

    setState(() {
      _messages[index] = updatedMessage;
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage);
  }

  void _loadMessages() async {
    final response = await rootBundle.loadString('assets/messages.json');
    final messages = (jsonDecode(response) as List)
        .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
        .toList();

    setState(() {
      _messages = messages;
    });
  }

  @override
  Widget build(BuildContext context) {
 return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_back_ios),
    ),
    centerTitle: true,
    title: Text(
      'Medical Records',
      style: TextStyle(
        color: Color(0xff0B8FAC),
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
        fontSize: 20,
      ),
    ),
  ),
  body: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.white, Color(0xffC5FFD9).withOpacity(0.6)],
      ),
    ),
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          CircleAvatar(
            radius: MediaQuery.of(context).size.width * 0.3,
            backgroundColor: Color(0xffC6EFE5),
            child: Image.asset('lib/Images/Group.png'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Text(
            'Add a medical record.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff222222),
              fontSize: 25,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Text(
              "A detailed health history helps a doctor diagnose you better.",
              style: TextStyle(
                color: Color(0xff677294),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          GestureDetector(
            onTap: _handleAttachmentPressed,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                color: Color(0xff0099E5),
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              child: Center(
                child: Text(
                  'Add a record',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
);
  }}