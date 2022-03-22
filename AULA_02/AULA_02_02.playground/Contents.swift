import UIKit
import Foundation

func myCar() {
    print("Meu carro")
}

func myCar(name: String) {
    print(name)
}

func myName(name first: String) {
    print("meu carro é \(first)")
}

func myAge(_ age: Int) {
    print(age)
}

func getName(name: String) -> String{
    name
}


//func getPerson(name: String, age: Int)-> (String, Int) {
//    return(name, age)
//}
//
//print(getPerson(name: "Fabiano", age: 25).2)


func makeBuy(onCompletion: (Int) -> Void) {
    onCompletion(10)
}

func makeBuy2(value: Int, onCompletion: (Int) -> Void) {
    onCompletion(value)
}

makeBuy { res in
    print("res: \(res)")
}

makeBuy2(value: 40) { res in
    print("res: \(res)")
}


typealias onCompletion = (Int, String) -> Void

func makeBuyProduct(onCompletion: onCompletion) {
    onCompletion(39, "Fabiano")
}

makeBuyProduct { res, name in
    print("res: \(res)")
    print("name: \(name)")
}
