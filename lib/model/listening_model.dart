class Listening {
  final String name;
  final String image;
  final String desc;
  final String audio;
  final bool url;

  Listening({
    required this.name,
    required this.image,
    required this.desc,
    required this.audio,
    required this.url,
  });
}

List<Listening> lst = [
  Listening(
    name: "Introduce Yourself to Digital World!",
    image: "assets/images/img_listening1.jpg",
    desc: "assets/pdf/listening1.pdf",
    audio: "assets/audios/unit1.mp3",
    url: false,
  ),
  Listening(
    name: "Go Beyond Computer Essentials",
    image: "assets/images/img_listening2.jpg",
    desc: "assets/pdf/listening2.pdf",
    audio: "assets/audios/unit2.mp3",
    url: false,
  ),
  Listening(
    name: "Inside the System",
    image: "assets/images/img_listening3.jpg",
    desc: "assets/pdf/listening3.pdf",
    audio: "assets/audios/unit3.mp3",
    url: false,
  ),
  Listening(
    name: "You Must Know Basic Software",
    image: "assets/images/img_listening4.jpg",
    desc: "assets/pdf/listening4.pdf",
    audio: "assets/audios/unit4.mp3",
    url: false,
  ),
  Listening(
    name: "Keep In Touch with The Internet",
    image: "assets/images/img_listening5.jpg",
    desc: "assets/pdf/listening5.pdf",
    audio: "assets/audios/unit5.mp3",
    url: true,
  ),
  Listening(
    name: "Network",
    image: "assets/images/img_listening6.jpg",
    desc: "assets/pdf/listening6.pdf",
    audio: "assets/audios/unit6.mp3",
    url: false,
  ),
  Listening(
    name: "Let’s go to Bright Future in IT Jobs",
    image: "assets/images/img_listening7.jpg",
    desc: "assets/pdf/listening7.pdf",
    audio: "assets/audios/unit7.mp3",
    url: false,
  ),
];
