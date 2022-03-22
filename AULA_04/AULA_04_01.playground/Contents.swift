import UIKit

class Person {
    var name: String="Fabiano"
    var age: Int = 32
    

    
    func welcome() {
        print("Seja bem vindo \(name)")
    }
}

var person = Person()


class Person2 {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    

    
    func welcome() {
        print("Seja bem vindo \(name)")
    }
}

var person2 = Person2(name:"Fabiano", age: 25)

print(person2.name)

print(person2.welcome())


struct Person3 {
    var name: String
    var age: Int
    
    //nao precisa de contrutor
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
    

    func welcome() {
        print("Seja bem vindo \(name)")
    }
}

var person3 = Person2(name:"Fabiano", age: 25)

print(person3.name)

print(person3.welcome())
