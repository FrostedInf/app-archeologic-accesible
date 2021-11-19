
class Sculpture{
  late String name;
  late String pathImage;

  Sculpture(this.name,this.pathImage);

  static List<Sculpture> getSculps(){
    return [
      Sculpture('El Tlahuicole', 'assets/img/tlahuicolesculpt.jpg'),
      Sculpture('Despues de la huelga', 'assets/img/huelgasculpt.jpg'),
      Sculpture('La lección', 'assets/img/leccionsculpt.jpg'),
      Sculpture('Maternidad', 'assets/img/maternidadsculpt.jpg'),
      Sculpture('La libertad', 'assets/img/libertadsculpt.jpg'),
      Sculpture('A pesar de todo', 'assets/img/pesartodosculpt.jpg')
    ];
  }
}
