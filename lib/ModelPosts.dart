class Post {
  final String id;
  final String userId;
  final String firstName;
  final String lastName;
  final String title;
  final String description;
  final String picturePath;
  final String userPicturePath;
  final List<dynamic> comments;
  final DateTime createdAt;

  Post({
    required this.id,
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.title,
    required this.description,
    required this.picturePath,
    required this.userPicturePath,
    required this.comments,
    required this.createdAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['_id'] ?? 'hh',
      userId: json['userId'] ?? 'hh',
      firstName: json['firstName'] ?? 'hh',
      lastName: json['lastName'] ?? 'hh',
      title: json['title'] ?? 'hh',
      description: json['description'] ?? 'hh',
      picturePath: json['picturePath'] ?? 'lib/Images/default_image.jpg',
      userPicturePath: json['userPicturePath'] ?? 'lib/Images/pexels-andrea-piacquadio-733872.jpg',
      comments: json['comments'] ?? [],
      createdAt: DateTime.parse(json['createdAt'] ?? DateTime.now().toIso8601String()),
    );
  }
}

