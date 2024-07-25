class Game {
  String bgImage;
  String icon;
  String name;
  String type;
  num score;
  num download;
  num review;
  String description;
  List<String> images;

  Game(
    this.bgImage,
    this.icon,
    this.name,
    this.type,
    this.score,
    this.download,
    this.review,
    this.description,
    this.images,
  );

  static List<Game> games() {
    return [
      Game(
        'assets/img/ori1.jpg',
        'assets/img/ori_logo.png',
        'Ori and The Blind Forest',
        'Adventure',
        4.9,
        243,
        324,
        "Ori is stranger to peril, but when a fateful flight puts the owlet ku in har'ms way.Ori is stranger to peril, but when a fateful flight puts the owlet ku in har'ms way.Ori is stranger to peril, but when a fateful flight puts the owlet ku in har'ms way.",
        [
          'assets/img/ori2.jpg',
          'assets/img/ori3.jpg',
          'assets/img/ori4.jpg',
        ],
      ),
      Game(
        'assets/img/rl1.jpg',
        'assets/img/rl_logo.png',
        'Rayman Legends',
        'Adventure',
        4.8,
        342,
        245,
        "Rayman is stranger to peril, but when a fateful flight puts the owlet ku in har'ms way.Ori is stranger to peril, but when a fateful flight puts the owlet ku in har'ms way.Ori is stranger to peril, but when a fateful flight puts the owlet ku in har'ms way.",
        [
          'assets/img/rl2.jpg',
          'assets/img/rl3.jpg',
          'assets/img/rl4.jpg',
          'assets/img/rl5.jpg',
        ],
      ),
    ];
  }
}
