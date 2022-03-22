import UIKit

var greeting = "Hello, playground"

let media = 6

switch media {
case 5:
    print("está abaixo da média")
case 6:
    print("está na média")
case 10:
    print("nota máxima")
default:
    print("errou")
}

switch media {
case 1...5:
    print("está abaixo da média")
case 6...9:
    print("está na média")
case 10:
    print("nota máxima")
default:
    print("errou")
}


enum Aluno {
    case Joao
    case Pedro
    case Maria
}

let aluno = Aluno.Joao


enum State: String {
    case success = "Sucesso"
    case Failure = "Falha"
}


print(State.success)
print(State.success.rawValue)


enum Page: Int {
    case one = 1, two, three
    
    func getPage() -> Int {
        return self.rawValue
    }
}

var numberPage = Page.two
print(numberPage.getPage())


let array = [1, 5, 8, 2, 4, 2]

let descending = array.sorted(by: <)
let ascending = array.sorted(by: >)

let arr1 = [1, 2, 3, 4]
let arr2 = [5, 6, 7, 8]

let arr12 = arr1 + arr2


let alunoNota = [4, 5, 7, 9, 3]
var novaNota: [Int] = []

for nota in alunoNota {
    let novaN = nota + 1
    novaNota.append(novaN)
}
print(novaNota)

var alunosNota = alunoNota.map({res in
    return res + 1
})

var alunosNota2 = alunoNota.map({$0 + 1})

print(alunosNota)

var aprovadors: [Int] = []

for nota in alunoNota {
    if nota > 6 {
        aprovadors.append(nota)
    }
}

print(aprovadors)


var aprovados = alunoNota.filter({res in
    res > 6
})


var soma = alunoNota.reduce(0, {$0 + $1})

print(soma)
