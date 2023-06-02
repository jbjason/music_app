class PodCast {
  final String title;
  final String singer;
  final String img;
  bool isFavorite;

  PodCast({
    required this.title,
    required this.singer,
    required this.img,
    this.isFavorite = false,
  });
}
