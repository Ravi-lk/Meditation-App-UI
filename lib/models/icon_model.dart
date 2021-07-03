class IconModel {
  String iconImage;
  String title;

  IconModel({required this.iconImage, required this.title});

  static List<IconModel> icons = [
    IconModel(iconImage: "assets/icons/sleep.png", title: "sleep"),
    IconModel(iconImage: "assets/icons/anxiety.png", title: "anxiety"),
    IconModel(iconImage: "assets/icons/sneeze.png", title: "breath"),
    IconModel(iconImage: "assets/icons/stress.png", title: "stress"),
  ];
}
