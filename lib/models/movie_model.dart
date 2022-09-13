class MovieModel {
  final String title;
  final String subTitle;
  final String image;
  final int rating;

  MovieModel({
    required this.title,
    required this.subTitle,
    required this.image,
    this.rating = 0
  });
}