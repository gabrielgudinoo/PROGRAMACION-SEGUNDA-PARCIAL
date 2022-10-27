
// GUDIÑO MÉNDEZ GABRIEL ALEJANDRO 27 DE SEPTIEMBRE DEL 2022

/*
void main()
{
    // Tipado explícito
    print("Hola mundo.");
    int nuEntero = 10;
    double nuNumeroFloat = 3.1416;
    num variableNumerica = 10;
    num variableNumericaDos = 10.5;
    String miCadena = "Me llamo Gabriel";
    dynamic miVariableDinamica = "Hola";
    print("Numero entero: $nuEntero\nNumero décimal: $nuNumeroFloat\nVariable númerica entera: $variableNumerica\nVariable númerica flotante: $variableNumericaDos\nMi cadena/string: $miCadena\nVariable dinámica: $miVariableDinamica");
    miVariableDinamica = 99.9;
    print("La variable dinámica cambió a: $miVariableDinamica");
}
*/

import 'dart:math';
import 'dart:io';

void main(List<String> args) 
{

    var numeroUno = 25;
    var numeroDos = 5;
    
    print("SUMA: $numeroUno + $numeroDos = ${numeroUno + numeroDos}");
    print("RESTA: $numeroUno - $numeroDos = ${numeroUno - numeroDos}");
    print("MULTIPLICACION: $numeroUno * $numeroDos = ${numeroUno * numeroDos}");
    print("DIVISION: $numeroUno / $numeroDos = ${numeroUno / numeroDos}");
    print("DIVISION ENTERA: $numeroUno ~/ $numeroDos = ${numeroUno ~/ numeroDos}");

    print(pow(5, 3));
    print(max(5, 3));
    print(min(5, 3));

    print("Función seno: ${sin(45 * pi / 180)}");
    print("Función coseno: ${cos(45 * pi / 180)}");
    print("Ríz cuadrada: ${sqrt(45 * pi / 180)}");

    print(10.isOdd);
    print(10.isEven);
}


/* 
void main(List<String> args)
{
    // Manejo de los contadores en Dart:

    var contador = 0;

    contador = contador + 1;
    print(contador);

    contador++;
    print(contador);

    ++contador;
    print(contador);

    contador += 2;
    print(contador);

    contador = 10;
    contador = contador - 1;
    print(contador);

    contador--;
    print(contador);

    --contador;
    print(contador);

    contador -= 2;
    print(contador)
}

void main(List<String> args)
{
    double numero = 5;

    numero /= 5; 
    print(numero);

    numero = numero / 5;
    print(numero);

    numero %=5;
    print(numero);

    numero =  numero % 5;
    print(numero);

    numero *= 5;
    print(numero);
    
    numero = numero *5;
    print(numero);
} 

void main(List<String> args)
{
    // const miEntero = 10; // Tiempo de compilacion
    // miEntero = 15; // No se puede modificar una constante
    // print(miEntero);
    const costEntero = 10;
    final finalEntero;
    print("Escribe un mensaje: ");
    var numero = stdin.readLineSync();
    finalEntero = numero;
    print("El mensaje es: $numero");
    // finalEntero = "Hola";
    // constEntero = 10 ; // No se puede modificar asi
    // finalEntero = 8;
    // Tiempo de codificacion
    // Tiempo de compilacion
    // Tiempo de ejecucion
} 

void main(List<String> args) 
{
    var cadena = 5;
    print(cadena is String);
    print(cadena.runtimeType);
    var cadena1 = "Hola ";
    var cadena2 = "Mundo";
    var nombre = "Cristian ";
    var edad = 18;
    print(cadena1 + cadena2);
    print("$cadena1 $cadena2");
    print(nombre + edad.toString());
    print("$nombre $edad");
} 

void main(List<String> args)
{
    // Sistemas Binarios
    // Binario
    print(125.toRadixString(2));
    print(125.toRadixString(8));
    print(125.toRadixString(16));
    var numero = 0xFFFF;
    print(numero.runtimeType);
}
 

void main(List<String> args)
{
    // Listas
    // List<int> miLista = [1, 2, 3, 4];
    // print(miLista);
    // var miLista2 = [1, "Hola", 9.8, true];
    // print(miLista2);
    //Agregar elementos a la lista
    miLista2.add(3.1416);
    print(miLista2);

    // miLista.add(5);
    // print(miLista);

    // listas
    final miLista = const [1, 2, 3, 4]; // avoid side effects
    print(miLista);

    for (var i = 0; i < miLista.length; i++)
    stdout.write("$i: ${miLista[i]} | ");
    // print("$i: ${miLista[i]}");
}

  // Añadir elementos a nuestra lista:
  // miLista.add(9);
  // print(miLista);
}
*/