

class Architecture{
  late String name;
  late String pathImage;

  Architecture(this.name,this.pathImage);

  static List<Architecture> getArchitectures(){
    return [Architecture('Pintura', 'assets/img/exhibition1.jpeg'),
      Architecture('Pintura', 'assets/img/exhibition1.jpeg'),
      Architecture('Paint', 'assets/img/exhibition1.jpeg'),
      Architecture('Paint', 'assets/img/exhibition1.jpeg'),
      Architecture('Paint', 'assets/img/exhibition1.jpeg')
    ];
  }
}