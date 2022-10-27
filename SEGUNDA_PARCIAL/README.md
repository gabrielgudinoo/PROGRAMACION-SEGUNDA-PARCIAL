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
En esta sección aprendimos acerca de como utilizar las listas en Dart,  en donde se abarcaron las definiciones y las sintaxis correctas de estas estructuras. Comenzando en que estas son estructuras de datos que pueden contener un grupo de objetos de distinto tipo de dato, inclusive una lista puede contener otra lista, además, la cantidad de elementos de una lista se puede modificar removiendo o añadiendo elementos. Para definir una lista se utilizan los corchetes, dentro de estos se colocan todos los elementos separados por comas:

  Brevemente, esos fueron los temas vistos en la <b<Unidad I</b> de esta primera parcial de nuestra clase <b>Programación funcional</b> llevada acabo por el docente <b>Walter Alexander Mata Lopez</b> en nuestra carrera profesional de Ingenería en computación inteligente, por el presente alumno <b>Gabriel Alejandro Gudiño Méndez</b> del grupo 2do "D".
