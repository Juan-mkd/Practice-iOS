import UIKit

// programacion orientada a objetos

//struct, es recomedable usar struct la mayoria de veces simpre y cuando sea posible y sino por ultima alaternativa las class

struct cuadrados {
    //propiedades
    var ancho = 10
    var alto = 10
    
    //func, methods
    func area() -> Int {
        return ancho * alto
    }
}

//instacia de la struct cuadrados
var miCuadrado = cuadrados()
miCuadrado.ancho


/*
 class
 */

class automovil {
    //propiedades
    var color = "black"
    var numeroLlantas = 4
    var precio = 0
    
    //methods
    func enceder() -> Bool {
        return true
    }
    
    func apagar() -> Bool {
        return true
    }
    
    func acelerar() -> Bool {
        return true
    }
}

var miObjectMazda = automovil()

miObjectMazda.color

miObjectMazda.precio = 500000

print(miObjectMazda.precio)




// Estructura vs Clase : Copia vs Referencia
class claseAutomovil {
    //propiedades
    var color = "black"
    var numeroLlantas = 4
    var precio = 0
    
    //methods
    func enceder() -> Bool {
        return true
    }
    
    func apagar() -> Bool {
        return true
    }
    
    func acelerar() -> Bool {
        return true
    }
}

var miObjectMazda2 = claseAutomovil()

miObjectMazda.precio

miObjectMazda.precio = 500

print("mi primera class referent \(miObjectMazda.precio) 500")




struct structAutomovil {
    //propiedades
    var color = "black"
    var numeroLlantas = 4
    var precio = 0
    
    //methods
    func enceder() -> Bool {
        return true
    }
    
    func apagar() -> Bool {
        return true
    }
    
    func acelerar() -> Bool {
        return true
    }
}


var miEstructuraMazda = structAutomovil()

miEstructuraMazda.precio

miEstructuraMazda.precio = 5000

print("my first instance  struct value \(miEstructuraMazda.precio) 5000")

var miSegundoObjectMazda = miObjectMazda
var miSegundaEstrcutMazda = miEstructuraMazda

miSegundoObjectMazda.precio = 100
miSegundaEstrcutMazda.precio = 150

// en la cllase cambia el precio original porlo que es una refernecia y en la struct se mantiene por aparte cada precio mateniendo el asigando primeramente
print("my second instance class referent \(miSegundoObjectMazda.precio)  100")
print("my second instance struct value \(miSegundaEstrcutMazda.precio)  150")



print(miEstructuraMazda.precio)

print(miObjectMazda.precio)
