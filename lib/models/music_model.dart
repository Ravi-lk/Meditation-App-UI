class MusicModel {
  String image;
  String name;

  MusicModel(
      {required this.image, required this.name});

  static List<MusicModel> musics = [
    MusicModel(image: "assets/images/relax.jpg", name: 'Feeling Better', ),
    MusicModel(image: "assets/images/morning.jpg", name: 'Morning Relaxation', ),
    MusicModel(image: "assets/images/raining.jpg", name: 'Raining Showers', ),
  ];
}
