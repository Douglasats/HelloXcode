import UIKit

class Person {
    var nom: [String]
    var apePat: String
    var apeMat: String
    var fecNac: String
    var dni: String
    var sex: String
    var ema: String
    var hmn: Int
    var edad: Int
    var user: String?
    
    init(nom:[String], apePat:String, apeMat:String, fecNac:String, dni:String, sex:String, ema:String, hmn: Int,edad:Int,user: String?){
        self.nom = nom
        self.apePat = apePat
        self.apeMat = apeMat
        self.fecNac = fecNac
        self.dni = dni
        self.sex = sex
        self.ema = ema
        self.hmn = hmn
        self.edad = edad
        self.user = user
    }
}


var personas: [Person] = [
    Person(
        nom: ["CARLOS","JOSÉ"],
        apePat: "ROBLES",
        apeMat: "GOMES",
        fecNac: "06/08/1995",
        dni: "78451245",
        sex: "M",
        ema: "carlos.roblesg@hotmail.com",
        hmn: 2,
        edad: 2022-1995,
        user: nil
    ),
    Person(
        nom: ["MIGUEL", "ANGEL"],
        apePat: "QUISPE",
        apeMat: "OTERO",
        fecNac: "28/12/1995",
        dni: "79451654",
        sex: "M",
        ema: "miguel.angel@gmail.com",
        hmn: 0,
        edad: 2022-1995,
        user: nil
    ),
    Person(
        nom: ["KARLA", "ALEXANDRA"],
        apePat: "FLORES",
        apeMat: "ROSAS",
        fecNac: "15/02/1997",
        dni: "77485812",
        sex: "F",
        ema: "Karla.alexandra@hotmail.com",
        hmn: 1,
        edad: 2022-1997,
        user: nil
    ),
    Person(
        nom: ["NICOLAS"],
        apePat: "QUISPE",
        apeMat: "ZEBALLOS",
        fecNac: "08/10/1990",
        dni: "71748552",
        sex: "M",
        ema: "nicolas123@gmail.com",
        hmn: 1,
        edad: 2022-1990,
        user: nil
    ),
    Person(
        nom: ["PEDRO", "ANDRE"],
        apePat: "PICASSO",
        apeMat: "BETANCUR",
        fecNac: "17/05/1994",
        dni: "74823157",
        sex: "M",
        ema: "pedroandrepicasso@gmail.com",
        hmn: 2,
        edad: 2022-1994,
        user: nil
    ),
    Person(
        nom: ["FABIOLA", "MARIAL"],
        apePat: "PALACIO",
        apeMat: "VEGA",
        fecNac: "02/02/1992",
        dni: "76758254",
        sex: "F",
        ema: "fabi@hotmail.com",
        hmn: 0,
        edad:2022-1992,
        user: nil
    )
    ]

func minimoIndice(array: [Person]) -> Int {
    var edad: Int
    var indice = 0
    edad = array[0].edad;
    for i in 1..<array.count {
        if array[i].edad < edad{
            edad = array[i].edad
            indice = i;
        }
    }
    return indice;
}

func maximoIndice(array: [Person]) -> Int {
    var edad: Int
    var indice = 0
    edad = array[0].edad;
    for i in 1..<array.count {
        if array[i].edad > edad{
            edad = array[i].edad
            indice = i;
        }
    }
    return indice;
}

var indiceMenorEdad = minimoIndice(array: personas)
var indiceMayorEdad = maximoIndice(array: personas)
personas[indiceMenorEdad].nom
personas[indiceMayorEdad].nom

func listarHombres(array: [Person]) -> [Person] {
    var hombres:[Person] = []
    for i in 1...array.count{
        if array[i-1].sex == "M"{
            hombres.append(array[i-1])
        }
    }
    return hombres;
}

var listaHombres: [Person] = listarHombres(array: personas)

func listarMujeres(array: [Person]) -> [Person] {
    var mujeres:[Person] = []
    for i in 1...array.count{
        if array[i-1].sex == "F"{
            mujeres.append(array[i-1])
        }
    }
    return mujeres;
}

var listaMujeres: [Person] = listarMujeres(array: personas)


func listaMayor2Hermanos(array: [Person]) -> [Person] {
    var hmnos:[Person] = []
    for i in 1..<array.count {
        if array[i-1].hmn > 2{
            hmnos.append(array[i-1])
        }
    }
    return hmnos
}

var listarMayor2Hermanos = listaMayor2Hermanos(array: personas)


func creaUsuarios (array: [Person]) -> [Person] {
    for i in 1...array.count{
        var stringA = array[i-1].ema
        var stringB = Array(stringA)
        var stringC:[String.Element] = []
        var contador = 0
            while stringB[contador] != "@"{
                stringC.append(stringB[contador])
                contador += 1
            }
        array[i-1].user = String(stringC)
    }
    return array
}

var crearUsuarios = creaUsuarios(array: personas)

/*RESPUESTAS*/

/*Obtener persona con mayor y menor edad*/
print("<--Menor edad: \(personas[indiceMenorEdad].nom[0]) \(personas[indiceMenorEdad].apePat)")
print("<--Mayor edad: \(personas[indiceMayorEdad].nom[0]) \(personas[indiceMayorEdad].apePat)")

print("")
/*Obtener lista de hombres*/
print("<--Los que son hombres: -->")
for i in 0...listaHombres.count-1{
    print("\(listaHombres[i].nom[0]) \(listaHombres[i].apePat)")
}

print("")
/*Obtener lista de mujeres*/
 print("<--Las que son mujeres: -->")
 for i in 1...listaMujeres.count{
     print("\(listaMujeres[i-1].nom[0]) \(listaMujeres[i-1].apePat)")
 }

 print("")
/*Obtener lista de personas con más de dos hermanos*/
print("<--Lista que tienen mas de 2 hermanos-->")
if listarMayor2Hermanos.count != 0{
    for i in 1...listarMayor2Hermanos.count{
        print("\(listarMayor2Hermanos[i-1].nom[0]) \(listarMayor2Hermanos[i-1].apePat)")
    }
}else{
    print("Nadie tiene más de dos hermanos")
}

print("")

let douglas = "DOUGLAS"
let b = douglas[douglas.startIndex]

/*Lista Formato primer nombre primer apellido pat primer inicial ape mat*/
print("<--LISTA FORMATO:-->")
for i in 1...personas.count {
    print("\(personas[i-1].nom[0].capitalized) \(personas[i-1].apePat.capitalized) \(personas[i-1].apeMat[personas[i-1].apeMat.startIndex]).")
}

print("")
/*Crear usuario*/
print("<--Listas de Usuarios Creados-->")
for i in 1...crearUsuarios.count{
    if let myUser = crearUsuarios[i-1].user{
        print("\(myUser)")
    }else{
        print("No existe usuario")
    }
}


