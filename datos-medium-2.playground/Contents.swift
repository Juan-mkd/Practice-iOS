import UIKit


//diccionarios
let myClassicDictionary = Dictionary<Int, String> ()
//tenemos un diccionario el cual la clave es de tipo int y el valor de tipo string
// nota en eos diccionarios no apareceran los datos ordenados, la busqueda siempre se hace por la clave
var myModernDictionary = [Int:String]()



//add datos
myModernDictionary = [001:"JUAN",002:"zeus"]

//add un solo valor, nuevos valores
myModernDictionary[003] = "Ana"


//acceder aun dato po la clave
print(myModernDictionary[001])

// la clave de los diccionarios es unica, podemos modificar su valor
myModernDictionary[001] = "juan c"

//forma clasica
myModernDictionary.updateValue("zeus ccc", forKey: 002)

//borrar datos
myModernDictionary[002] = nil
//opcion clasica
myModernDictionary.removeValue(forKey: 002)


