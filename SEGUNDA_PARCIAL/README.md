# UNIDAD 2: SEGUNDA PARCIAL "PROGRAMACIÓN FUNCIONAL". 
## WALTER ALEXANDER
### ESTUDIANTE: GUDIÑO MÉNDEZ GABRIEL ALEJANDRO
#### 1. PRINCIPIOS DE PROGRAMACIÓN CON <b>DART</b
En el comienzo de esta segunda parcial el maestro Walter nos dió a conocer un nuevo lenguaje de programación con un paradigma orientado a objetos, en donde se nos enseñó la sintaxis correcta utilizado en este lenguaje. Desde las más básicas hasta las más avanzadas, los temas o procesos desarrollados que aprendimos fueron las siguientes:

  - Tipos de datos (String, int, double, dynamic, etc.).
  - Declaración de variables de manera explícita.
  - Estructura correcta de la función main o principal.
  - Interpolación de cadenas. Inyectar una variable a una cadena e interpolación de cadenas con expresiones o funciones.
  
  Algunos fragmentos de códigos de los temas anteriores son los siguientes:
~~~
def FuncionMensaje(Mensaje: str, Nombre: str) -> str:
    Codigo aqui
~~~
Desde la función principal lo que hicimos fue llamar cada función que se definieron anteriormente. El bloque de código del cuerpo o función principal es la siguiente:
~~~
if __name__ == "__main__":

    print(FuncionMensaje("Hola", "Gabo"))
    print(FuncionEdadUno("Gabo", 19))
    print(FuncionEdadDos(2022, 2003, "Gabo"))
~~~
La pantalla de respuesta al ejercicio anterior es la siguiente:<br><br>
![](https://i.imgur.com/KYAuiEC.png)
  
### 2. IMPORTACIONES DE ARCHIVOS EN PYTHON
En esta sección voy a explicar que fue lo que aprendimos en este tema de importaciones de módulo. Básicamente aprendimos como utilizar importando un archivo externo en nuestro archivo main de nuestro proyecto. Existe un módulo en Python para obtener acceso al código en otro módulo haciendo uso del proceso de importación. La instrucción <b>import</b> es la forma más común de invocar este proceso de importación. A continuación se observan los códigos realizados en clase:
~~~
import SUMA as S
import RESTAR as R
import MULTIPLICAR as M
import DIVIDIR as D
import CUADRADO as C

if __name__ == "__main__":

    NumeroUno = 15
    NumeroDos = 10
    print("SUMA:",S.sumar(NumeroUno,NumeroDos))
    print("RESTAR:",R.restar(NumeroUno,NumeroDos))
    print("MULTIPLICAR:",M.Multiplicar(NumeroUno,NumeroDos))
    print("DIVIDIR:",D.Dividir(NumeroUno,NumeroDos))
    print("ELEVAR EL PRIMER NUMERO AL CUADRADO:",C.Cuadrado(NumeroUno))
    print("ELEVAR EL SEGUNDO NUMERO AL CUADRADO:", C.Cuadrado(NumeroDos))  
~~~

 ### 3. MANEJO DE LAS F STRING EN PYTHON 3
En esta sección se abordaron muchos temas demasiado interesantes y útiles a la hora de programar, hablo de <b>formatted string literals</b> ó <b>formateo literal de cadenas</b> en la cual consiste en implementarlo a la sintaxis convirtiendola en más simple y fluida que hará más sencillo y práctico darle formato a cadenas de texto al momento de imprimirlas en pantalla.
Los ejercicios que se llevaron acabo en clase fueron los siguientes:

  - Mensajes desde ciertas funciones eviando cadenas como argumentos y regresandolas con el uso de las <b>f string</b>.
  - Crear listas con datos previamente asignados para posterior a eso mostrarlos en pantalla con el uso de las <b>f string</b>.
  - Ejercicio para imprimir información de alumnos con sus respectivas calificaciones y materias haciendo uso de las <b>f string</b>.
  
Las <b>líneas de código</b> que destacan de dichos ejercicios son los siguientes:
  
~~~
  return f"Hola {Nombre}, tienes {Edad} años."
  return f"Hola {Nombre}, tienes {anio_actual- anio_nacimiento} años."
  return f"Divide y vencerás: Hola {Nombre}, tienes {CalcularEdad(anio_actual,anio_nacimiento)} años."
  print(f"Alumno: {AlumnosCalificaciones['Nombre']}")
  print(f"Alumno: {AlumnosCalificaciones['Nombre']}", f"con una calificación de: {AlumnosCalificaciones['Materia1']}")
  print(f"{Encabezado[0]:^10}{Encabezado[1]:^10}{Encabezado[2]:^10} {Encabezado[3]:^10}")
  print(f"{Estudiantes[a]:^10}{Calificaciones[a]:^10}{Calificaciones2[a]:^10}{Calificaciones3[a]:^10}")
~~~
  
#### 4. ESTRUCTURAS DE DATOS EN PYTHON 3
En esta sub unidad aprendimos como llevar a cabo la programación de:
  - Listas
  - Tuplas
  - Diccionarios
En donde se abarcaron las definiciones y las sintaxis correctas de cada una de ellas. Empezando con las <b>listas</b>, estas son estructuras de datos que pueden almacenar cualquier otro tipo de dato, inclusive una lista puede contener otra lista, además, la cantidad de elementos de una lista se puede modificar removiendo o añadiendo elementos. Para definir una lista se utilizan los corchetes, dentro de estos se colocan todos los elementos separados por comas:
~~~
Estudiantes = ["Gabo", "Paco", "Luis", "Lupita"]
~~~
  Las <b>tuplas</b> son secuencias de elementos similares a las listas, la diferencia principal es que las tuplas no pueden ser modificadas directamente, es decir, una tupla no dispone de los métodos como append o insert que modifican los elementos de una lista. Para definir una tupla, los elementos se separan con comas y se encierran entre paréntesis como en el siguiente ejemplo:
~~~
Alumnos = ("Alejandro", "Kevin", "Luis", "Marco")
~~~
  Por último, los <b>diccionarios</b> son estructuras que contienen una colección de elementos de la forma clave: valor separados por comas y encerrados entre llaves. Las claves deben ser objetos inmutables y los valores pueden ser de cualquier tipo. Necesariamente las claves deben ser únicas en cada diccionario, no así los valores.
Vamos a definir un diccionario con el nombre y calificaciones de unos estudiantes:
~~~
AlumnosCalificaciones = {"Nombre": "Hugo", "Materia1": 10, "Materia2": 5}
print(f"Diccionario \"Alumnos\": {AlumnosCalificaciones}")
print(f"Alumno: {AlumnosCalificaciones['Nombre']}")
print(f"Alumno: {AlumnosCalificaciones['Nombre']}", f"con una calificación de: {AlumnosCalificaciones['Materia1']}")
~~~
  Brevemente, esos fueron los temas vistos en la <b<Unidad I</b> de esta primera parcial de nuestra clase <b>Programación funcional</b> llevada acabo por el docente <b>Walter Alexander Mata Lopez</b> en nuestra carrera profesional de Ingenería en computación inteligente, por el presente alumno <b>Gabriel Alejandro Gudiño Méndez</b> del grupo 2do "D".
