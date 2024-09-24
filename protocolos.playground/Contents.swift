import UIKit
import Foundation


/*
 seguridad y manejo de memoria
 1.Evitar acceso de escritura simultaneos, no intentemos modificar el valor de una variable desde diferentes puntos
 2.Accesos concurrentes ala misma direccion de memoria
 3.Duracion asincrona del acceso
 
 */


/*
 controles de acceso, nos ayuda a mejorar la estabilidad de nuestra app
 
 -open -> pueden ser utilizados y sobreescritos en cualquier lugar, incluso en otros módulos que importen el módulo donde están definidos.
 
 -public -> pueden ser accedidos desde cualquier lugar, incluidos otros módulos, pero no pueden ser sobreescritos fuera del módulo donde se definen, a menos que también sean open.
 
 -internal -> son accesibles solo dentro del mismo módulo donde se definen (es decir, el mismo proyecto o paquete).
 
 -fileprivate -> son accesibles solo dentro del mismo archivo Swift donde están definidos.
 
 -private -> son accesibles solo dentro de la misma declaración (clase, struct, etc.) donde están definidos.
 
 
 
 los controles de acceso los podemos aplicar a:clas,struct,enum,var,let,func
 para aplicar el control de acceso debemos colocar la palabra reserva del controld de acceso antes de la palabra reservada del tipo de dato
 
 public class
 public var
 
 
 
 */









// extensiones
let mymeters: Double = 5


func metersToKm(meters: Double) -> Double {
    return meters / 1000
}

print(metersToKm(meters: mymeters))


extension Double {
    var Km: Double {
        return self / 1000
    }
    var m: Double {
        return self
    }
    var cm: Double {
        return self * 100
    }
}

print(mymeters.Km)


 // protocolos

protocol PersonProtocol{
    var name: String { get set}
    var age: Int {get set}
    
}

struct Programmer: PersonProtocol{
    var name: String
    var age: Int
    var lenguaje: String
    
    func fullname() -> String {
        return "El nombre es \(name), edad \(age) e imparte la asignatura de \(lenguaje)"
    }
}
struct Teacher: PersonProtocol {
    var name: String
    var age: Int
    var subject: String
    
    func fullname() -> String {
        return "El nombre es \(name), edad \(age) e imparte la asignatura de  \(subject)"
    }
}

let myProgrammer = Programmer(name: "Juan", age: 20, lenguaje: "Swift")
let myTeacher = Teacher(name: "Brais", age: 25, subject: "math")


print(myProgrammer.fullname())
print(myTeacher.fullname())




// protocolo delegado

class FirstClass: SecondClassProtocol {
    func call() {
        print("estoy devuelta!!")
    }
    
    func callSecond() {
        let secondClass = SecondClass()
        secondClass.delegate = self
        secondClass.callFisrt()
    }
}


protocol SecondClassProtocol {
    func call()
}


class SecondClass {
    
    var delegate: SecondClassProtocol?
    
    
    func callFisrt() {
        sleep(5)
        
        delegate?.call()
    }
}


let firstClass = FirstClass()
firstClass.callSecond()




// generics

// sin genericon
func swapTwoInts(a: inout Int, b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var myFirstInt = 5
var mySecondInt = 10

print("The first value is \(myFirstInt) and the second value is \(mySecondInt)")
swapTwoInts(a: &myFirstInt, b: &mySecondInt)
print("The first value is \(myFirstInt) and the second value is \(mySecondInt)")


//con genericos
func swapTwoGenerics<T>(a: inout T, b: inout T) {
    let tempA = a
    a = b
    b = tempA
}


var myFirstGeneric = "Juan"
var mySecondGeneric = "C"

print("The first value is \(myFirstGeneric) and the second value is \(mySecondGeneric)")
swapTwoGenerics(a: &myFirstGeneric, b: &mySecondGeneric)
print("The first value is \(myFirstGeneric) and the second value is \(mySecondGeneric)")



// Precedencia y Asociatividad
let myInt: Int = (2+((3 % 4) * 5))

let myInt2: Int = (((2 + 3) % 4) * 5)


//mas operadores avanzados
 //- opreadores bit a bit: realizar operaciones con bits de tipo not,and,or,xor
//- operadores de desplazamiento: para desplazar bits
//- operadores de desbordamiento: para manejar errores en valores por encima de su limite
//- operadores custom: para definir nosotros mismos operadores


