

class Paint{
  late String name;
  late String pathImage;

  Paint(this.name,this.pathImage);

  static List<Paint> getPaints(){
    return [
      Paint('Cañada de Metlac', 'assets/img/metlacpaint.jpg'),
      Paint('La alameda de México', 'assets/img/alamedapaint.jpg'),
      Paint('Colón ante los Reyes Católicos', 'assets/img/reyescolonpaint.jpg'),
      Paint('La adoración de los Reyes', 'assets/img/adorreyespaint.jpg'),
      Paint('Autorretrato de José Maria Velasco', 'assets/img/joseretratopaint.jpg'),
      Paint('Retrato de German Cueto', 'assets/img/germanpaint.jpg'),
      Paint('La danza de Xochipitzahua', 'assets/img/danzapaint.jpg'),
      Paint('La apoteosis de la paz', 'assets/img/apoetosispazpaint.jpg'),
      Paint('El globo', 'assets/img/globopaint.jpg')
    ];
  }
}
