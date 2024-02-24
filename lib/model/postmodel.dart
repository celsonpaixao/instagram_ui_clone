class PostModel {
  final String user_name;
  final String user_image;
  final String post_description;
  final String post_image;

  PostModel(
    this.user_image, {
    required this.user_name,
    required this.post_description,
    required this.post_image,
  });
}
