import UIKit

var str = "Hello, playground"
str = "Hola mundo"

var miNombre = "Juan calderon"

let horasdeldia = 24


//declaraciones multiples
var myfullanme = "Juan Calderon",miFechaDeNacimiento = "12-02-2000",miLugar = "colombia"


//Tipos de datos

//enteros
var x = 15
	
//Flotantes
var y = 18.8


//operadores aritmeticos + - * /
var sumaEnteros = x + 2

var sumaFlotantes = y + 2.2

//en esta operacion el resultado es double porque las dos variables son del mismo tipo
var suma = Double(x) + y

//en esta operacion el resultado es int ya que las dos variables sumadas son int, por lo tanto no hagarra los numeros decimales
var suma1 = x + Int(y)


var division = x / 3

//en esta operacion el resultado deberia ser double y nos sale entero, el lenguaje lo toma como int
var division1 = x / 5

//para que tome el resulatdo como doblue colocamos la x como type double
var division2 = Double(x) / 3




//Asignacion Implicita y Explicita

//Implicita la computadora lo interpreta por defecto el tipo de dato
var n = 10

//Explicita tu de manera explicita le asignas el valos que quieres que tenga, tener en cuenta los byts para el espacio de la memoria es recomendable usar dependiendo la necesidad

var twenty:Int8 = 20
var diezMil:Int = 10000


/*
 ********************** notas *******************
 si pulsa option mas click en la x nos dice l tipo de dato que es
 
 
 
*/
