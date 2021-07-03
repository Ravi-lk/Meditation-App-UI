class MeditationModel {
  String image;
  String title;
  String time;

  MeditationModel(
      {required this.image, required this.title, required this.time});

  static List<MeditationModel> meditations = [
    MeditationModel(image: "assets/images/relax2.jpg", title: 'Rest & Relax', time: '15mins'),
    MeditationModel(image: "assets/images/relax1.jpg", title: 'Heal you soul', time: '15mins'),
  ];
}
