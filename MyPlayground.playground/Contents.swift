import UIKit

var greeting = "Hello, playground"
var idade = 25
print(idade)
print(greeting)
idade = idade + 30
 
idade = idade + 50
var bonusScore: Int
var environmentName: String
var levelCOmpletes: Bool
var progessPercantage: Double
 

var a = 5
var b = 2
var myResul = a / b
type(of: myResul)

// por conta do type inference o swift entende que divisao de inteiros é um inteiro

let c: Double = 5
let d: Double = 2
let myResult = c / d
type(of: myResult)

let e = 2
let f = 2.5

// swift nao deixa somar por exemplo variáveis de tipos diferentes, nesse caso é preciso converter uma pra poder fazer a operação
//let g = e + f
let g = Double(e) + f


let str = "21"
let num = Int(str)


let str2 = "koko"
let num2 = Int(str2)


//var num3   --> para redefinir o valor de uma variável não iniciada é preciso fazer o type annotation, senão da erro
var num3: Int
num3 = 4

// com o optional eu posso mudar a variável para nil
var num4: Int?
num4 = 4
num4 = nil
num4 = 5

var num6: Int = 0
var num7: Int?

//optionals nao aceita operacoes, pq como pode ser nil aí é preciso fazer unwrap
num6 = num6 + 5
//num7 = num7 + 5
num7 = 8
let num8 = num7! + 5

var arr1 = ["banana", "pera"]
let arr2 = [0, 1, 2, 3]

print(arr1[1])

arr1[1] = "caju"

print(arr1[1])
print(arr2[3])

arr1.append("uva")

//inicializando um array vazio
var arr3: [Int] = []

arr3.append(contentsOf: [2, 3, 4])


// Operadores lógicos: && || !=

// conditional

if a > 1 {
    print(a)
} else {
    print(b)
}

let switcher = 3

switch switcher {
    //rang in swift
case 1...10:
    print(1)
case 11...20:
    print(2)
case 21...30:
    print(3)
default:
    print("default")
}


var x = 0
while x < 10 {
    print("oi")
    x = x + 2
}

repeat {
    x = x + 1
    print("oi de novo")
} while x < 20


for number in 1...10 {
    print(number + 5)
}


for fruta in arr1 {
    print(fruta)
}

for number in stride(from: 20, to: 5, by: -2) {
    print(number)
}

// interpolation
print("I have \(x + 10) books")

func doSomething () {
    print("funcionou")
}

doSomething()

func doSomething (number: Int) -> Void{
    print("\(number) vezes")
}

// chamar a funcao é obrigatorio passar o nome do parametro
doSomething(number: 2)


func doSomething2 (number: Int)-> Int {
    return number + 2
}

// se colocar o _ na frente do paramentro, nao precisa passar o label

func doSomething (_ number: Int) -> Void{
    print("\(number) vezes")
}

doSomething(5)

// pra mudar o nome que chama o parametro é só passar antes do nome que é definido na funcao

func doSomething (externo number: Int) -> Void{
    print("\(number) vezes")
}

doSomething(externo: 10)


enum MediaType {
    case book
    case movie
    case music
    case game
//    case book, movie, music, game
}

var ite: MediaType = MediaType.book
ite = .game


struct Movie {
    var title: String
    var director: String
    var genre: String
    var releaseDate: Int
}

var first = Movie(title: "abc", director: "ret", genre: "dsad", releaseDate: 2)

print(first.title)
print(first.self)
first.releaseDate  = 1984
print(first.releaseDate)


var dict = [
    "a": "test1",
    "b": "test2"
]

print(dict)

var periodicElements: [String: String] = [:]
periodicElements["Fe"] = "Ferro"
periodicElements["C"] = "Carbono"
periodicElements["Be"] = "Berílio"

print(periodicElements)
print(periodicElements["Fe"])
print(periodicElements["Fe"]!)

if let result = periodicElements["Fe"] {
    print(result)
} else {
    print("no match")
}

periodicElements["Fe"] = nil

print(periodicElements)

for (key, value) in periodicElements {
    print("value: \(value)")
    print("key: \(key)")
}

//tuples

var tuple = (1, "dois")

// pra acessar o indicde da tupla usa nome.indice
print("tupla \(tuple.0)")

// a funcao pra retornar dois valore deve retornar uma tupla e o retorno pode ter um nome especícífico que poderá ser acessado quando a funcao for chamada
func tuplee()-> (num: Int, alfa:String) {
    return (1, "dois")
}

var retorno = tuplee()
// acessando o nome da propriedade da tupla
print(retorno.num)

// a tupla tb pode ser desestruturada
let (numero, stringg) = tuplee()
print(numero)

struct Book {
var readingAge: Int
    var nome: String
}

let book1 = Book(readingAge: 1, nome: "A")
let book2 = Book(readingAge: 2, nome: "B")
let book3 = Book(readingAge: 3, nome: "C")

// closure
var books = [book1, book2, book3]
let filtered = books.filter{$0.readingAge < 2}
print(filtered)


//final
class Appliance {
    var manufacturer: String
    var voltage: Int
    
    // computed property
//    var score: Int {
//        return voltage * 10
//    }
    
    var score: Int {
        get {return voltage * 10}
        set(newVal) {voltage = newVal + 2}
    }
    
    init(withVoltage: Int) {
        self.manufacturer = " "
        self.voltage = withVoltage
    }
    
    final func details() {
        print(self.voltage)
    }
}

var kettle = Appliance(withVoltage: 12)
kettle.manufacturer = "Ford"
kettle.voltage = 12
kettle.score

kettle.details()

class Toast: Appliance {
    
    var slice:Int
    
    override init(withVoltage: Int) {
        self.slice = 2
        super.init(withVoltage: 2)
    }
    func toast() {
        print("hi")
    }
}


//extensios

extension String {
    func removeSpace() -> String {
        let filtered = self.filter {$0 != " "}
        return String(filtered)
    }
}

print("dasdas adas das".removeSpace())


// protocol (interface)


protocol MyProtocol {
    var name: String {get}
    func showMessage()
}

class Teste: MyProtocol {
    var lastName: String = " "
    var name: String = " "
    func showMessage() {
        print("oi")
    }
    
}

// errors


enum ServerError: Error {
    case noConnection
    case notFound
}

func checkStatus(number: Int) throws -> String {
    switch(number) {
    case 1:
        print("no connection")
        throw ServerError.noConnection
    case 2:
        print("not FOund")
        throw ServerError.notFound
    default:
        print("other")
    }

    return "success"
}

do {
    try print(checkStatus(number: 2))
} catch ServerError.notFound {
    print("adfasdas")
}

catch {
     print(error )
}


