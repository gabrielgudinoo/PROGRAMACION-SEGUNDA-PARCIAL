
// GUDIÑO MÉNDEZ GABRIEL ALEJANDRO 28 DE SEPTIEMBRE

/*import 'dart.io':

// Tipado estático, definir el tipo de dato.
// Inferencia de tipo de dato.

void main()
{
    print("Dame tu edad");
    var edad = stdin.readLineSync();
    print(edad is int);
    print(edad is double);
    print(edad is bool);
    print(edad is String);
}

void main()
{
    print("Primer programa hecho en DART.");
}

void main()
{
    String nombre = "Gabo";
    String apellido;
    print("Nombre");
    Apellido = "Gudiño";
    print(Nombre + " " + Apellido);
}

void main()
{
    int edad = 19;
    double gravedad = 9.81;
    num numero = 11;
    num numeroDos = 11.5;
    print("Resultados: \n\nEdad: $edad\nGravedad: $gravedad\nNúmero: $numero\nNúmero con decimal: $numeroDos");
    print("\nEjemplo de uso de la palabra reservada \"dynamic\" al declarar una variable:\n");
    dynamic variableDinamica = "Cadena";
    print("Cadena: $variableDinamica");
    variableDinamica = 10;
    print("Entero: $variableDinamica");
    variableDinamica = 9.5;
    print("Flotante: $variableDinamica");
    variableDinamica = true;
    print("Booleano: $variableDinamica");
}

// Funciones

void main()
{
    print("Hola ${obtenerNombre()} ${obtenerApellido()} tienes ${calcularEdad(2022,2003)} años\n");
    print("Calcular edad usando Arrow Functions o Funciones Cortas:\n${calcularEdadshortFunctions(2022,2003)}");
}

int calcularEdad(int aAcual, int aNacimiento)
{
    return aAcual - aNacimiento;
}

String obtenerNombre()
{
    return "Gabo";
}

String obtenerApellido()
{
    return "Gudiño";
}

int calcularEdadshortFunctions(int aAcual, int aNacimiento) => aAcual - aNacimiento;

// Obtener status de una variable

void main()
{
    var status = esPar(7);
    print("Tipo de dato: ${status.runtimeType}");
    print("¿Es par? $status");
}

bool esPar(int num)
{
    if (num % 2 == 0)
        return true;
    else
        return false;
}

import 'dart:io';

void main()
{
    print("Dame tu edad:");
    var edad = int.parse(stdin.readLineSync()!);
    //var edad = stdin.readLineSync();
    print("$edad es de tipo ${edad.runtimeType}");
}
*/

// Calculadora realizada en clase:


import 'dart:io';

void main() {
  String op = leerDatos("Indica la operación (+,-,*,/)");
  int numeroUno = int.parse(leerDatos("Primer número: "));
  int numeroDos = int.parse(leerDatos("Segundo número"));
  print("${calculadora(op, numeroUno, numeroDos)}");
}

String leerDatos(String mensaje) {
  print(mensaje);
  String data = (stdin.readLineSync()!);
  return data;
}

String calculadora(String op, int n1, int n2) 
{
  if (op == "+")
    return "$n1 + $n2 = ${suma(n1, n2)}";
    
  else if (op == "-")
    return "$n1 - $n2 = ${resta(n1, n2)}";
  
  else if (op == "*")
    return "$n1 * $n2 = ${multi(n1, n2)}";
            
  else if (op == "/")
    return "$n1 / $n2 = ${divi(n1, n2)}";
                
  else
    return "Operación inválida";
}

int suma(int numeroUno, int numeroDos) => numeroUno + numeroDos;
int resta(int numeroUno, int numeroDos) => numeroUno - numeroDos;
int multi(int numeroUno, int numeroDos) => numeroUno * numeroDos;
int divi(int numeroUno, int numeroDos) => numeroUno ~/ numeroDos;