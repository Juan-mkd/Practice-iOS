import UIKit

// diferencias, en las tuplas podemos  tener diferentes tipos de datos

//esto no se puede hacer solo tiene que tener un solo tipo de dato
//var array = [1,1.3,"hi"]


//var persona = ("Juan","Calderon",20,1.70)
//
//
////acceder a los valores de las tuplas
//persona.0
//
//
//var (nombre,apellido,edad,estatura) = persona
//nombre


var personNameTuples = (nombre: "juan",apellido:"calderon",edad:30,estatura:1.70)
personNameTuples.edad


//enumeraciones con los valores asociados
enum complexPersonalData {
    case name(String)
    case surname (String, String)
    case adress (String,Int)
    case phone(Int)
    
}

//var complexPersonalData: complexPersonalData = .name("Juan")
//
//complexPersonalData = .adress("calle test", 5)


// Enumeraciones con el mismo tipo de valor

enum RawPersonalDate: String {
    case name
    case surname
    case adress
    case phone
    
}

RawPersonalDate.name.rawValue


//range operator
var arregloexampple = [0,1,2,3,4,5,6,7]


//Operador range doble  lado / two-sided range operator
var subsetArreglo = arregloexampple[2...5]
print(subsetArreglo)

//Operador rango lado unico / one-sided range operator

var subsetArreglo2 = arregloexampple[...4]
print(subsetArreglo2)



var rangoClose = [1...5]
print(rangoClose)


Array(rangoClose)


var subArray = Array(rangoClose[0])
print(subArray)
