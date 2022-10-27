// GUDIÑO MENDEZ GABRIEL ALEJANDRO - 14 DE OCTUBRE SIMULACRO DE EXAMEN

void main(List<String> args)
{

    Vehiculo classG = new Vehiculo();

    //Vehiculo ClassG = new Vehiculo.Marca("BMW"); //Estructor especifico/inicializar en una propiedad, "Marca".

    classG.noLlantas = 6;
    classG.color = "Azul";
    classG.modelo = "CLASS G 2020";
    classG.marca = "Merdeces Benz";
    // classG.informacion(classG);
    classG.informacion();

    //Vehiculo ClassG = new Vehiculo(6, "Negro", "CLASS G", "Mercedes Benz"); //Usando constructor.
    // ClassG.Informacion();
}

class Vehiculo
{
    int? _noLlantas;
    String? _color;
    String? _modelo;
    String? _marca;
    
    void set noLlantas(int noLlantas) => _noLlantas = noLlantas;
    void set color(String color) => _color = color;
    void set modelo(String modelo) => _modelo = modelo;
    void set marca(String marca) => _marca = marca;

    int get noLlantas => _noLlantas!;
    String get color => _color!;
    String get modelo => _modelo!;
    String get marca => _marca!;

    // CONSTRUCTOR FORMA 1.

    // Vehiculo(int NoLlantas, String Color, String Modelo, String Marca)
    // {
    //     this._NoLlantas = NoLlantas;
    //     this._Color = Color;
    //     this._Modelo = Modelo;
    //     this._Marca = Marca;
    // }

    // CONSTRUCTOR FORMA 2 (MÁS RÁPIDA).

    //Vehiculo(this._NoLlantas, this._Color, this._Modelo, this._Marca);

    //Vehiculo.Marca(this._Marca); // Inicializar solo en Marca.

    void arrancar() => print("El auto comenzó avanzar.");
    void correr() => print("El auto corre.");
    void frenar() => print("El auto comenzó el afrenado.");

    
    void informacion()
    {
        print("No. de Llantas    :   ${_noLlantas}");
        print("Color             :   ${_color}");
        print("Modelo            :   ${_modelo}");
        print("Marca             :   ${_marca}");
    }    

}


    
// Mostrar mensaje con constructor 
// void informacion(Vehiculo classG)
// {
//     print("No. de Llantas    :   ${_noLlantas}");
//     print("Color             :   ${_color}");
//     print("Modelo            :   ${_modelo}");
//     print("Marca             :   ${_marca}");
// }