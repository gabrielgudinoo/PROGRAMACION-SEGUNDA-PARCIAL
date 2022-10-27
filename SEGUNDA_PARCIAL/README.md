# UNIDAD II: SEGUNDA PARCIAL "PROGRAMACIÓN ORIENTADA A OBJETOS". 
## WALTER ALEXANDER.
### ESTUDIANTE: GUDIÑO MÉNDEZ GABRIEL ALEJANDRO.
#### 1. PRINCIPIOS DE PROGRAMACIÓN CON DART.
En el comienzo de esta segunda parcial el maestro Walter nos dió a conocer un nuevo lenguaje de programación con un paradigma orientado a objetos, en donde se nos enseñó la sintaxis correcta utilizado en este lenguaje. Desde las más básicas hasta las más avanzadas, los temas o procesos desarrollados que aprendimos fueron las siguientes:

  - Tipos de datos (String, int, double, dynamic, boolean, num).
  - Declaración de variables de manera explícita.
  - Estructura correcta de la función main o principal.
  - Interpolación de cadenas. Inyectar una variable a una cadena e interpolación de cadenas con expresiones o funciones.
  
  Algunos fragmentos de códigos de los temas anteriores son los siguientes:
~~~
void main()
{
    print("Primer programa hecho en DART.");
}
~~~

~~~
void main()
{
    String aombre = "Gabo";
    String apellido;
    print("nombre");
    apellido = "Gudiño";
    print(nombre + " " + apellido);
}
~~~

~~~
void main()
{
    int edad = 19;
    double gravedad = 9.81;
    num numero = 11;
    num numeroDos = 11.5;
    dynamic variableDinamica = "Cadena";
    print("Cadena: $variableDinamica");
    variableDinamica = 10;
    print("Entero: $variableDinamica");
    variableDinamica = 9.5;
    print("Flotante: $variableDinamica");
    variableDinamica = true;
    print("Booleano: $variableDinamica");
}
~~~
Ejecución a los bloques de códigos anteriores:<br><br>
![](https://i.imgur.com/tPPBRqv.png)

![](https://i.imgur.com/ofqvjED.png)
  
 ### 2. FUNCIONES EN DART
Posterior a lo visto anteriormente, continuamos con las estructuración de funciones en este lenguaje de programación, en la cual no tiene mucha diferencia a otros lenguajes en cuestión de sintaxis, se puede decir que es completamente idéntica a los que hemos utilizado en Python e incluso en C, pero con una pequeña cantidad de procesos adicionales que podemos realizar en Dart. Una de esas son los "Arrow functions" o funciones cortas, en la cual son funciones que solo pueden tener una línea de código realizados con la sigiente flecha:
~~~
=>
~~~
Este tipo de funciones nos ayuda a mantener nuestras funciones pequeñas e incrementar la legibilidad del código. Vamos a convertir nuestros ejemplos anteriores a arrow functions. A continuación se observan un fragmento de los códigos realizados en clase:
~~~
void main()
{
    print("Hola ${obtenerNombre()} ${obtenerApellido()} tienes ${calcularEdad(2022,2003)} años\n");
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
~~~
Arrow functions ó funciones cortas:
~~~
int calcularEdadshortFunctions(int aAcual, int aNacimiento) => aAcual - aNacimiento;
~~~

### 3. LEER DATOS DESDE EL TECLADO
En esta sección se abordó como leer datos desde el teclado en la cual es demasiado útil a la hora de programar. Para llevarlo a cabo se necesita el uso de una librería de Dart llamada "dart:io". Para llamar dicha función a nuestro código la siguiente sintaxis es la correcta:
~~~
import 'dart:io';
~~~
Para llevar a cabo todo este proceso, se necesitará realizar el siguiente método si lo que vamos a leer es de tipo string:
~~~
var nombreVariable = stdin.readLineSync();
~~~
En caso de que queramos leer un dato de tipo entero o algún otro, se usará:
~~~
var nombreVariable = int.parse(stdin.readLineSync()!);
~~~
Si no realizamos ambas diferencias, los resultados pueden ser catastróficos. Te voy a demostrar un ejemplo, el código siguiente:
~~~
print("Dame tu edad:");
var edad = int.parse(stdin.readLineSync()!);
print("$edad es de tipo ${edad.runtimeType}");
~~~
Va a imprimir lo siguiente:

![](https://i.imgur.com/gAXlz19.png)

Por lo tanto, si colocamos un <b>int.parse</b> al momento de hacer la asignación del método a nuestra variable, el resultado será el siguiente:

![](https://i.imgur.com/kzMGafF.png)

  
### 4. ESTRUCTURAS DE DATOS EN DART

En esta sección aprendimos acerca de como utilizar las listas en Dart,  en donde se abarcaron las definiciones y las sintaxis correctas de estas estructuras. Comenzando en que estas son estructuras de datos que pueden contener un grupo de objetos de distinto tipo de dato, la cantidad de elementos de una lista se puede modificar removiendo o añadiendo elementos. Para definir una lista se utilizan los corchetes, dentro de estos se colocan todos los elementos separados por comas:
~~~
var miLista = [11, "Gabo", 9.9, false];
~~~

### 4. OBJETOS EN DART

En Dart todo es un objeto, por lo que la declaración de variables como enteros, de punto flotante, booleanos y cadenas de texto, son una instancia de objetos de determinado tipo, tan es así que null, también es un objeto. Otra característica importante es que se permite la inferencia de tipos utilizando la palabra reservada var. A continuación se podrá observar como va estructurado un objeto con sus respectivas propiedades y métodos. Se pretende crear un objeto llamado vehículo con las siguientes propiedades:
- Número de llantas.
- Color del vehículo.
- Modelo del vehículo.
- Marca del vehículo.

Los métodos del objeto serán los siguientes:

- Arrancar.
- Correr.
- Frenar.

Dicho lo anterior, la programación del código será la siguiente:
~~~
void main(List<String> args)
{

    Vehiculo classG = new Vehiculo();
    classG.noLlantas = 6;
    classG.color = "Azul";
    classG.modelo = "CLASS G 2020";
    classG.marca = "Merdeces Benz";
    classG.informacion();
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
~~~

La pantalla de ejecución es la siguiente:

![](https://i.imgur.com/WlAN409.png)

### CONSTRUCTORES EN DART

Los constructores son un método especial que se utiliza para inicializar un objeto cuando se crea en el programa. En la programación orientada a objetos, cuando se crea un objeto, llama automáticamente al constructor. Todas las clases tienen su constructor predeterminado que es creado por el compilador cuando se llama a la clase, además, también se puede definir un constructor propio. Pero debe tener en cuenta que si lo hace, el constructor predeterminado no se creará y se ignorará. Otra actividad realizada en clase fue hacer un programa muy identico al anterior pero con la implementación de un constructor, veamos el código:
~~~
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
~~~

En este código nuestro objeto es una Casa, cuyas propiedades son <b>precio</b>, <b>metros cuadrados de construcción</b> y su <b>ubicación</b>. En este ejemplo, no le declaramos métodos para no hacer más largo el código, pero la idea y el proceso es el mismo. Veamos la pantalla de ejecución de este código usando constructores:

![](https://i.imgur.com/2daydMG.png)

### ÚLTIMO EJERCICIO DE LA UNIDAD: ENTRANDO EN HERENCIAS, CREAR UNA CLASE PADRE LLAMDA "ANIMAL" CON DOS CLASES HIJO "TIBURÓN" "TIGRE" Y QUE LA CLASE "TIBURÓN" TENGA UNA CLASE HIJO "TIBURONCÍN".

En forma de descripción, se va a nacesitar crear cuatro clases usando y aplicando o heredando los métodos y propiedades mediante la estructuración de herencias en Dart. El código es el siguiente:

~~~
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
~~~

La pantalla de ejecución es la siguiente:

![](https://i.imgur.com/f79DTXO.png)

Esos fueron los temas abordados en Dart en la <b>Unidad II</b> de nuestra clase de <b>Programación funcional</b> que ahora fue más Orientada a Objetos, nuestra materia es impartida por el docente <b>Walter Alexander Mata Lopez</b> y actualmente estamos cursando nuestra carrera profesional de Ingenería en Computación Inteligente <b>ICI</b>, por el presente alumno <b>Gabriel Alejandro Gudiño Méndez</b> del grupo 2do "D".
