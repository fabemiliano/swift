import UIKit

var greeting = "Hello, playground"
greeting = "Oi"
print(greeting)


let age = 25
// age = 30

print(age)


var name = "Fabiano"
var lastName = "Martins"

var fullName = name + " " + lastName

// interpolação de strings

fullName = "\(lastName) \(name)"

// nao é possível reatribuir tipo a uma variável
// name = 40

/*
comentarios de mais de uma linha
Tipos do Swift
 
Int ou Int32 = inteiro
Int 64 = inteiro 64 bits
 
Double: pontos flutuantes preciso
Float: pontos flutuantes

String:
 
Bool: booleano
*/

//var numero: Int = "Teste" atribuicao inválida

// tipos complexos
var button: UIButton = UIButton()
var label = UILabel()

// condicional

var isHidden = true

if isHidden {
    print("dentro do if")
}


//arrays

var cars = ["kombi", "fusca", "gol"]
//var cars = ["kombi", "fusca", "gol", 2] nao aceita numero num array de string
var cars2 = ["kombi", "fusca", "gol", 2] as [Any] //fazer o cast para aceitar number num array de string

cars.append("palio")
cars.insert("uno", at: 3)
cars.insert("bmw", at: 3)

typealias xpto = String
var cars3 : [xpto] = ["mercedes"]


//dicionario

var dici: [String: String] = ["nome": "Fabiano"]
print(dici["nome"] as Any)
print(dici["nome"]!)


