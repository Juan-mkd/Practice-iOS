import UIKit
import Foundation

// strings en una linea
let myString = "welcome course of swift"

//strings de varias lineas

let myMultipleString = """

welcome al curso de swift

espero este interesante

"""

//strings vacios
var string = ""

var string1 = String()


//caracteres en swift
let myCharacter: Character = "\u{E9}"
let myCharacter2 = "\u{24}"


// caracteres especiales (\n, \r, \t, \0, \ )
let myStrings = "bienvenidos al curso de swift"


//emojis
let myEmojis = "\u{1F496}"

//control + command + space
let emojis = "😎"



//concatenacion
let name = "Juan"
var concatenacion = "bienvenido" + name

// Interpolacion
var interpolacion = "mi nombre es \(name)"



/* comparacion y otras operaciones*/
//comparacion

let name1 = "juan"
let name2 = "zeus"
let name4 = "juan"
//deberia return false porque no son iguales
name1 == name2

//deberia dar true ya que son iguales
name1 == name4


//contenido
let myContent = "mi nombre es juan"
//esta fucion nos escuentra si juan esta dentro de la variable myContnt
myContent.contains(name1)


//vacia
let myEmptyString = ""
myEmptyString == ""
//esta funcion nos returna true si la vraiable esta vacia
myEmptyString.isEmpty


//recorrido
for valor in myContent {
    print(valor)
}
