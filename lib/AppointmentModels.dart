import 'dart:convert';

import 'package:http/http.dart' as http;

class Appointment {
  final String id;
  final String idPatient;
  final String idMedecin;
  final DateTime date;
  final String time;
  final String complaint;

  Appointment({
    required this.id,
    required this.idPatient,
    required this.idMedecin,
    required this.date,
    required this.time,
    required this.complaint,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      id: json['_id'],
      idPatient: json['IdPatient'],
      idMedecin: json['IdMedecin'],
      date: DateTime.parse(json['Date']),
      time: json['Time'],
      complaint: json['Complaint'],
    );
  }
}

Future<List<Appointment>> fetchAppointments() async {
  final response = await http.get(Uri.parse('http://localhost:3005/api/appointment/get-all-appointments'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((appointment) => Appointment.fromJson(appointment)).toList();
  } else {
    throw Exception('Failed to load appointments');
  }
}
