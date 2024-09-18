import UIKit

//boleanos y valores logicos
var estudiosJuan = "Grado universitario"

var cedulaProfesional = false
var cedula = true
var salario = 0


if cedula {
    var salario = 2000000
} else {
    salario = 2000
}


//arreglos


//remember que los arrays su posicion inicial para los elementos comienza en 0
var arregloNumbers = [1,2,3]
let arreglosNumbersInmutables = [1,5,2]

//acceder al valor del array, en este caso nos imprime el 2
print(arregloNumbers[1])

// esta funcion o "method" nos agrega un elemnto al final del array
arregloNumbers.append(8)
// en este caso se agrega un valor en la posicion indicada el elemento como primera posicion y la posicion en la segunda posicion  insert(elemento, posicion)
arregloNumbers.insert(10, at: 1)

print(arregloNumbers)




//eliminar elementos

//elimina el ultimo valor del array
arregloNumbers.removeLast()
print(arregloNumbers)

//elimina el valor de la posicion que le asignamos
arregloNumbers.remove(at: 1)

print(arregloNumbers)


//eliminar todo el arreglo
arregloNumbers.removeAll()

print(arregloNumbers)



//arreglos vacios

var arregloVacio:[Int] = []

print(arregloVacio)
