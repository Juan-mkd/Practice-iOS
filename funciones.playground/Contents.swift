import UIKit

/*
 funciones
 */

// funciones sin parametros

func holaMundo() {
    print("hola mundo")
}

holaMundo()

// funcion con parametros
func cuadradoDeNumero(numero:Int) {
    
    let numeroCuadrado = numero * numero
    print(numeroCuadrado)
    
}
cuadradoDeNumero(numero: 5)


func cuboDe(number:Int) -> Int {
    let numeroCubo = number * number * number
    return numeroCubo
}

cuboDe(number: 10)


//definir en los parametros de las funciones valores por defecto

func saludar(name:String,lastName:String = "bdbsj👋") {
    print("welcome \(name) \(lastName)")
}
saludar(name: "Juan")

// valores multiples de retorno en una fuction
func listaNames () -> [String]  {
    let arregloNames = ["jose","juan","pedro"]
    return arregloNames
}
var names = listaNames()
print(names)


// add nombre a parametros Internos (materia1,materia2,materia3)  y externos(matematicas,quimica,fisica)
func calificacionPromedioMaterias(matematicas materia1:Double,quimica materia2:Double,fisica materia3:Double) -> Double {
    
    return (materia1+materia2+materia3)/3
}



let miCalificacionPromedio =  calificacionPromedioMaterias(matematicas:81,quimica:45,fisica:60)
print(miCalificacionPromedio)


// Introduccion a closures
/*
 {
 (parametros) -> tipo-valor-return in codigo
 
 }
 */

let firstClosure = {
    (materia1:Double, materia2:Double,materia3:Double) -> Double in
    
    return (materia1+materia2+materia3)/3
}

firstClosure(100,22,88)
