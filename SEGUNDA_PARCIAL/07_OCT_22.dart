
// GUDIÑO MÉNDEZ GABRIEL ALEJANDRO

//Clase 07/10/22

/*
void main()
{
    class User 
    {
        String Nombre;
        var UsuarioUno = User(); // Instancia de la clase "UsuarioUno".
        User UsuarioDos = User();

        // Esto no está bien.

        UsuarioUno.Nombre = "Gabo";
        UsuarioUno.Edad = 50;
        Usuario1.Reporte();
        
        var Alumno = Estudiante();
        Alumno.NombreCarrera = "Ingenería en Computación Inteligente"
        Alumno.Semestre = 3
        Alumno.NumCuenta = "20184957"
        Alumno.Reporte();

    }
}

//Encapsulamiento:

//  - Ocultar los atributos de la clase.
//  - Hacerlos locales dentro de la clase.
//  - El símbolo.

Class Estudiante
{
    String? Carrera;
    int? Semestre;
    String? NumCuenta;

    void Reporte()
    {
        print("Carrera            :   $Carrera");
        print("Semestre           :   $Semestre");
        print("No. de Cuenta      :   $NoCuenta");
    }

}

Class User
{
    //Propiedades
    String? Nombre;
    int? Edad;

    //Metodos
    void Reporte()
    {
        print(UsuarioUno.Nombre);
        print(UsuarioDos.Edad);
    }
}

    
// ________________________________________________________________________________________________________________________________-

// Otro ejemplo:

void main(List<String> args)
{
    User UsuarioUno = User();
    UsuarioUno.Nombre = "Gabo";
    UsuarioUno.Reporte();
    print(UsuarioUno.getNombre);
    print(UsuarioUno.getEdad);
}
    
clase User
{
    String? _Nombre;
    int? _Edad;

    void set Nombre(String Nombre) => _Nombre = Nombre;
    //{
    //    _Nombre = Nombre
    //} Se pone en comentario debido a que le aplicamos la forma declarativa.

    void set Edad(int Edad)
    {
        _Nombre = Nombre
    }

    String get Nombre
    {
        return _Nombre!; //Esto quiere decir que se puede retornar un valor nulo. El "!"
    }

    String get Edad
    {
        return _Edad!; //Esto quiere decir que se puede retornar un valor nulo. El "!"
    }

}
 void Reporte()
{
    print(_Nombre);
    print(_Edad);
}

// ________________________________________________________________________________________________________________________________-

// Otro ejemplo: Scope de variables o ámbito de variables.

void main(List<String> args)
{
    var x = 5;
    void showNumber()
    {
        var y = 10;
        print(x);
        print(y);
    }

    showNumber();
    showX1();

    //Funciones fat arow ó arrow.
    void ShowX2() => print(x); //Función declarativa
}
//_______________________________________________________________________________________________________________________
// 12 de OCTUBRE

void main(List<String> args)
{
    print(suma(1,2));
    var res = suma(3,3);
    print(res);    
}
int sumaEjemplo (int a, int b) //Declaración imperativa
{
    //Forma 1: return a + b;
    var SumaRes = a + b;
    return SumaRes;
}

int suma(int a, int b) => a + b //Expresion declaraiva
int resta(int a, int b) => a - b //Expresion declaraiva
int multiplicacion(int a, int b) => a * b //Expresion declaraiva
double division(int a, int b) => a / b //Expresion declaraiva

// OTRO EJEMPLO CON USO DE CLASES 

void main(List<String> args)
{
    Calcu CalcuDos = Calcu();
    int n1, n2;
    n1 = 5;
    n2 = 10;

    int res = CalcuDos.suma(n1,n2);
    print("$n1 + $n2 = $res");
    print("$n1 + $n2 = ${CalcuDos.suma(n1 + 1, n2 + 3)}");
}

class Calcu
{
    int suma(int a, int b) => a + b //Expresion declaraiva
    int resta(int a, int b) => a - b //Expresion declaraiva
    int multiplicacion(int a, int b) => a * b //Expresion declaraiva
    double division(int a, int b) => a / b //Expresion declaraiva
}




void mensaje()
{
    print("Hola mundo");
}

// OTRO EJEMPLO CON USO DE CLASES 

void main(List<String> args)
{
    Calcu CalcuDos2 = Calcu();
    CalcuDos2.a = 5;
    CalcuDos2.b = 10;

    int res = CalcuDos.suma(CalcuDos2.a, CalcuDos2.b);

    print("${CalcuDos2.a} + ${CalcuDos2.b} = $res");

}

class Calcu
{
    int suma(int a, int b) => a + b //Expresion declaraiva
    int resta(int a, int b) => a - b //Expresion declaraiva
    int multiplicacion(int a, int b) => a * b //Expresion declaraiva
    double division(int a, int b) => a / b //Expresion declaraiva
}

// EJEMPLO DE LAS LISTAS DE UNA FUNCION PRINCIPAL

void main(List<String > args)
{
    int? n1;
    int? n2;

    if (args.lenght == 1)
    {
        n1 = int.parse(args[0]);
        n2 = int.parse(args[1]);
        print(n1 + n2);
    }
    else
    {
        print("Error de argumento\nFormato: dart main.dart 4 5");
    }
}

// CALCULADORA USANDO LO ANTERIOR

void main(List<String > args)
{
    Calcu CalcuDos2 = new Calcu();

    if (args.lenght == 2)
    {
        CalcuDos2.a = int.parse(args[0]);
        CalcuDos2.b = int.parse(args[1]);
        print(CalcuDos2.suma(CalcuDos2.a, CalcuDos2.b));
    }
    else
    {
        print("Error de argumento\nFormato: dart main.dart 4 5");
    }
}

class Calcu
{
    int suma(int a, int b) => a + b //Expresion declaraiva
    int resta(int a, int b) => a - b //Expresion declaraiva
    int multiplicacion(int a, int b) => a * b //Expresion declaraiva
    double division(int a, int b) => a / b //Expresion declaraiva
}

// ACTIVIDAD DEL MAESTRO

void Calcu(int a, int b, String op){
 CalcuDos
}


void main(List<String > args)
{
    Calcu CalcuDos = new Calcu();

    if (args.lenght == 2)
    {
        var a = int.parse(args[0]);
        var.b = int.parse(args[1]);
        Calcu.Cacular(a, b, args[2]);
    }
    else
    {
        print("Error de argumento\nFormato: dart main.dart 4 5");
    }
}

void Calcular(int a, int b, String op)
{
    /*if (op == 1) => print("$CalcuDos2.a + $CalcuDos2.b");
    if (op == 2) => print("$CalcuDos2.a - $CalcuDos2.b");
    if (op == 3) => print("$CalcuDos2.a * $CalcuDos2.b");
    if (op == 4) => print("$CalcuDos2.a / $CalcuDos2.b");*/
    switch (op)
    {
        case '+':
        print(suma(a, b));
        break;
        case '*':
        print(multiplicacion(a, b));
        break;
        default:
        print("Operación no reconocida");
    }
}

class Calcu
{
    int a = 0;
    int b = 0;
    int suma(int a, int b) => a + b //Expresion declaraiva
    int resta(int a, int b) => a - b //Expresion declaraiva
    int multiplicacion(int a, int b) => a * b //Expresion declaraiva
    double division(int a, int b) => a / b //Expresion declaraiva
}

void main(List<String>args){
    
}

class persona{
    String nom= "";
    String aP= "";
    String aM "";
    int aN = 0;

    int edad(int aN) => 2022 - aN 
    est.showName(String nom, String aP, String aM){
        print ("$aP $aM $nom")
    }

}
*/

// ÚLTIMO EJEMPLO:

void main(List<String> args)
{
    Persona gabo = new Persona();
    gabo.aMaterno = "Mendez";
    gabo.aPaterno = "Gudiño";
    gabo.nombre = "Gabriel";
    gabo.aNacimiento = 2003;

    gabo.info(gabo.nombre, gabo.aPaterno, gabo.aMaterno);
    print("Tienes ${gabo.calcularEdad(gabo.aNacimiento)} años");

    gabo.verInfoDos();
}

class Persona 
{
    String nombre = "";
    String aPaterno = "";
    String aMaterno = "";
    int aNacimiento = 0;

  int calcularEdad(int aNacimiento) => 2022 - aNacimiento;

  void info(String nombre, String aPaterno, String aMaterno) => print("$aPaterno $aMaterno $nombre");

  void verInfoDos() => print("$nombre $aPaterno $aMaterno");
}
