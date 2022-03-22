import UIKit

class Aluno {
    var name: String?
    
    func getName() -> String {
        guard let name = name else {return " "}
        return name
    }

}


extension Aluno {
    func setAluno(name: String) {
        self.name = name
    }
}


protocol Materia {
    func materiaAluno()
}


extension Aluno: Materia {
    func materiaAluno() {
        
    }
}


let fullName = "adasdas dasdasdas dasdas"
print(fullName.capitalized)
print(fullName.uppercased())
print(fullName.prefix(1))
print(fullName.dropFirst())


extension String {
    func captalizefirst() -> String {
        return prefix(1).capitalized + dropFirst()
    }
}

var teste = "asdasd dasdsa"

print(teste.captalizefirst())
