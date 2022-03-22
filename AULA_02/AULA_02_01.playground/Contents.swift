import UIKit

//var message: String
// vai falar pois nao foi iniciada
//print(message)

var message: String?
//message = "Minha mensagem"
// adicionar valor default com ??
print(message ?? "teste")

var mensagem: String?

mensagem = "Outra mensagem"

if let mensagem = mensagem {
    print(mensagem)
}

// if let so usa no escopo
// guard let permite usar fora do escopo


func icon() -> UIImage {
    guard let image = UIImage(named: "Photp") else {
        return UIImage(named: "Default")!
    }
    return image
}


//testar isso aqui com let
func someFunc(parameter: String?) {
    guard let parameter = parameter else {return}
    print(parameter)
}
//testar isso aqui com guard
func getUser(user: String?) -> String {
    if let user = user {
        return user
    }
    
    return "Fabiano"
}
