import UIKit

//structuras de control

//if,else son estructuras de contro la cualkes si se cumple una condicion pasa esto si no paso lo otro
var edad = 17
var cantDinero = 1000


// en este ejemplo puede netrar las persoan si es mayor de edad o tiene el dinero, si se cumpl;e almenos alguna condicion puede pasar
if edad >= 18 || cantDinero > 250 {
    print("si puedes entrar ")
} else {
    print("no puedes entrar porque eres menor de edad o no tienes dinero")
}

//switch
let country = "ES"

switch country {
    case "ES":
        print("The lenguaje is spanish")
    case "MX":
        print("The lenguaje is spanish")
    case "PE":
        print("The lenguaje is spanish")
    case "CO":
        print("The lenguaje is spanish")
    case "EEUU":
        print("The lenguaje is English")
    default:
        print("we do not know your lenguaje")
}

let age = 20

switch age {
    case 0,1,2:
        print("you are baby")
    case 3...10:
        print("you are boy")
    case 11..<16:
        print("you are adolecents")
    case 16..<70:
        print("you are adulkt")
default:
    print("no eres de este mundo😱")
}



//swift con enum

enum PersonalData {
    case name
    case surname
    case adress
    case phone
}

let userData: PersonalData = .name



switch  userData {
case .name:
    print("estamos editando el  name")
case .surname:
    print("estamos editando el  surname")
case .adress:
    print("estamos editando el  adress")
case .phone:
    print("estamos editando el  phone")
}


// ciclos for, sirven para iterar sobre una coleccion de datos
var contadora = 0


for i in 1...5 {
    print(i)
}

var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
                      11, 12, 13, 14, 15, 16, 17, 18, 19, 20]


for number in numbers {
    print(number)
}


var frutas = [
    "manzana": "rojo",
    "banana": "amarillo",
    "naranja": "naranja",
    "uva": "morado",
    "kiwi": "verde",
    "fresa": "rojo",
    "mango": "amarillo",
    "pera": "verde",
    "cereza": "rojo",
    "piña": "amarillo"
]

for (key,name) in frutas {
    print("\(key) ---> \(name)")
}

var suma = 0

for n in numbers {
    suma = n + suma
}

print("la suma de los numbers es: \(suma)")


//ciclo while, este ciclo se ejecuta siempre que la condicion se cumpla, una vez la condicion  se acabe se sale, debemos tener  encuanta para este bucle que demos inicializar un avariable sino se nos vuelve un bucle infinito

var edad1 = 10

while edad1 < 18 {
    print("Eres menor de edad. Te faltan \(18 - edad1) years")
    
    edad1 += 1
}


//bucle  repeat While
var i = numbers.count - 1

repeat {
    numbers.remove(at: i)
    i -= 1
    print("cantidad elements \(numbers.count)")
    print("i = \(i)")
} while (numbers.count > 0 )

print(" el arreglo esta vacio, su cantidad de elementos es: \(numbers.count)")














