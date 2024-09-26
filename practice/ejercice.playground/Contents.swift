import UIKit
import Foundation
/*
 Struct Product:

 Propiedades:
 name (String): El nombre del producto.
 quantity (Int): La cantidad de productos en el inventario.
 price (Double): El precio del producto.
 Método:
 description(): Retorna una cadena con la descripción del producto (nombre, cantidad y precio).
 Class Inventory:

 Propiedad:
 products (Lista de Product): Lista de productos en el inventario.
 Métodos:
 addProduct(product: Product): Agrega un nuevo producto al inventario.
 updateProductQuantity(name: String, quantity: Int): Actualiza la cantidad de un producto en el inventario usando el nombre del producto.
 listProducts(): Imprime la lista de todos los productos disponibles en el inventario.
 
 */




struct Product {
    var name:String
    var quantity:Int
    var price:Double
    
    func description() -> String {
        return ("nombre \(name) quantity\(quantity) price\(price)")
    }
}


class Inventory {
    var products:[Product] = []
    
    func addProduct(product:Product) {
        products.append(product)
    }
    
    func updateProductQuantity(name: String, quantity: Int) {
        for i in 0..<products.count {
            if products[i].name == name {
                products[i].quantity = quantity
                break
            }
        }
    }
    
    func listProducts() {
        for product in products {
            print(product.description())
        }
    }
}


// Ejemplo de uso
let product1 = Product(name: "Laptop", quantity: 10, price: 999.99)
let product2 = Product(name: "Smartphone", quantity: 20, price: 699.99)
let product3 = Product(name: "Tablet", quantity: 15, price: 499.99)

let inventory = Inventory()
inventory.addProduct(product: product1)
inventory.addProduct(product: product2)
inventory.addProduct(product: product3)

print("Lista de productos en el inventario:")
inventory.listProducts()

inventory.updateProductQuantity(name: "Laptop", quantity: 8)
print("\nLista de productos después de actualizar la cantidad de 'Laptop':")
inventory.listProducts()
