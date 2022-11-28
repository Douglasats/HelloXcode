import UIKit


func contarLetras(frase:String){
    var arrayFrase = Array(frase)
    for letra in arrayFrase{
        var letras:[String.Element] = []
        for i in 0..<arrayFrase.count{
            if arrayFrase[i] == letra {
                letras.append(arrayFrase[i])
            }
        }
        if letra != " "{
            print("\(letras[0]) = \(letras.count)")
        }
    }
}

contarLetras(frase: "la historia de mi vida")
print("********************")

