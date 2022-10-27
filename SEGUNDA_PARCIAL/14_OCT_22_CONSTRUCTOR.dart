import 'dart:io';
void main()
{
  Casa Valle = new Casa(4, 530, "Valle de Bravo");
  Informacion(Valle);
  Casa Altozano = new Casa(5, 600, "Altozano");
  Informacion(Altozano);
  Casa LasParotas = new Casa.MetrosCuadrados(650);
  Informacion(LasParotas);


  stdout.write("\nPedir datos:\n\nDígite el precio: ");
  var PedirPrecio = (stdin.readLineSync()!);
  double __Precio = double.parse(PedirPrecio);

  stdout.write("Dígite los metros cuadrados: ");
  var  PedirMetrosCuadrados = (stdin.readLineSync()!);
  double __MetrosCuadrados = double.parse(PedirMetrosCuadrados);

  stdout.write("Dígite la ubicación: ");
  var  __Ubicacion = stdin.readLineSync();

  Casa Infonavit = new Casa(__Precio, __MetrosCuadrados, __Ubicacion);
  Informacion(Infonavit);

}

//String LeerDatos(String Mensaje)

class Casa
{
    double? _Precio;
    double? _MetrosCuadrados;
    String? _Ubicacion;

    void set Precio(double Precio) => _Precio = Precio;
    void set MetrosCuadrados(double MetrosCuadrados) => _MetrosCuadrados = MetrosCuadrados;
    void set Ubicacion(String Ubicacion) => _Ubicacion = Ubicacion;

    double get Precio => _Precio!;
    double get MetrosCuadrados => _MetrosCuadrados!;
    String get Ubicacion => _Ubicacion!;

    Casa(this._Precio, this._MetrosCuadrados, this._Ubicacion);

    Casa.MetrosCuadrados(this._MetrosCuadrados);
}

void Informacion(Casa)
{
  print("\n             INFORMACIÓN\nPrecio de la casa:             ${Casa._Precio}");
  print("Metros cuadrados construidos:  ${Casa._MetrosCuadrados}");
  print("Ubicación:                     ${Casa._Ubicacion}");
}