
// GUDIÑO MENDEZ GABRIEL ALEJANDRO 19 DE OCTUBRE DEL 2022

/*void main(List<String> args) 
{
  Tiburon tiburoncin = Tiburon('Nemo');
  tiburoncin.nadar();
  tiburoncin.patas = 0;
  tiburoncin.nombre = 'Dark Shark';
  tiburoncin.info();
}
class Animal 
{
  int? patas;
  String? nombre;
  void info() {
    print('El animal ${nombre} tiene ${patas} patas');
  }
  Animal({this.nombre, this.patas});
}

class Tiburon extends Animal 
{
  String? _raza;
  void nadar() {
    print("Tiburon nadando.");
  }
  void info() {
    print('El animal ${_raza} tiene ${patas} patas ya que no las necesita en el agua. Como ${nombre} le apodaron en lo más hondo del oceáno.');
  }
  Tiburon(this._raza);
}

class Tigre extends Animal 
{
  String? _raza;

  Tigre(this._raza);
  void info() {
    print('El Tigre de raza ${_raza} tiene ${patas} patas y se llama ${nombre}');
  }
}*/

void main()
{   
    print("\n\"-\" Propiedades  \"@\" Métodos\n");
    Animal koala = new Animal.data("Koala", "Río Janeiro", "Gris", 2);
    koala.showAnimal();
    koala.dormir();
    print("");

    Tiburon bruce = new Tiburon.data("Bruce", "Océano Índico", "Gris y Blanco", 0, "Tiburón Blanco", 11);
    //Tiburon pitbull = new Tiburon.data("Bruce", "Océano Índico", "Gris y Blanco", "Tiburón Blanco", 11);
    bruce.showbruce();
    bruce.cazando();
    print("");

    Tigre tigrezo = new Tigre.data("Bengala", "África Safari", "Blanco", 2, 8);
    tigrezo.showtigrezo();
    tigrezo.grune();
    print("");

    Tiburoncin nemo = new Tiburoncin.data("Pez payaso.", "Golfo de México", "Naranja, blanco y negro.", 0, 3, "Si");
    nemo.showNemo();
    nemo.huyendo();
    print("");
}

class Animal
{
    String _especie = "";
    String _habitat = "";
    String _color = "";
    int _patas = 0;

    Animal();
    Animal.data(this._especie, this._habitat, this._color, this._patas);

    void dormir() => print("@ ZzzZzZ durmiendo.");
    void cazando() => print("@ Animal nadando...");
    void grune() => print("@ GRRR");

    void showAnimal()
    {
        print("- Especie: $_especie");
        print("- Habitad: $_habitat");
        print("- Color: $_color");
        if (_patas <= 0)
          print("- No tiene patas porque es un animal acuático.");
        else
          print("- Patas: $_patas");
    }
}

class Tiburon extends Animal 
{
    String _raza = "";
    int _aletas = 0;

    Tiburon.data(_especie, _habitat, _color, _patas, this._raza, this._aletas): super.data(_especie, _habitat, _color, _patas);

    void cazando() => super.cazando();
    void showbruce() 
    {
        super.showAnimal();
        print("- Raza: $_raza\n- Aletas: $_aletas");
    }
}

class Tigre extends Animal 
{
    int _edad = 0;
    Tigre();
    Tigre.data(_especie, _habitat, _color, _patas, this._edad) : super.data(_especie, _habitat, _color, _patas);

    void grune() => super.grune();
    void huyendo() => print("@ Nemo huyendo...");

    void showtigrezo() 
    {
        super.showAnimal();
        print("- Edad: $_edad años.");
    }
}

class Tiburoncin extends Tigre
{
    String _perdido = "";
    Tiburoncin.data(_especie, _habitat, _color, _patas, _alas, this._perdido) : super.data(_especie, _habitat, _color, _patas, _alas);
    void huyendo()
    {
        super.huyendo();
    }
    
    void showNemo()
    {
        super.showtigrezo();
        print("- Perdido: $_perdido");
    }
}