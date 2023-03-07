//
//  main.swift
//  Classe - aula
//
//  Created by Bernardo Aguiar Guimarães on 07/03/23.
//

import Foundation

// OBJETO
// CARACTERISTICAS DE UM OBJETO -> ATRIBUTOS OU PROPRIEDADES
// AÇÕES = FUNÇÃO / METODO

// Para criar uma classe sempre começamos com a palavra reservada "class" e em seguida colocamos o seu nome que sempre deve começar com a primeira letra maiusculo

class Automovel {
    
    var cor: String = "Preto"
    var numeroDePortas: Int = 2
    var marca: String = "Honda"
    var eEletrico: Bool = false
    var quantidadeDePassageiros: Int = 5
    
    func ligarFarol() {
        print("O Farol está ligado")
    }
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
    
}

class Bike{
    var temPneu: Bool = true
    var cor: String = "Azul"
    var temBuzina: Bool = false
    var quantidadePortaGarrafa: Int = 1
    
    func andar(){
        print("Não é possível andar, pois está quebrada")
    }
    
    func estacionar(){
        print("Sempre estacione em local seguro!")
    }
}

class Elefante{
    var peso: Double = 1000.0
    var cor: String = "Marrom"
    var idade: Int = 50
    
    func local(){
        print("O elefante mora na savana.")
    }
    
    func comer(){
        print("O elefante come muito")
    }
    
}

class noteBook{
    var cor: String = "Preto"
    var memoria: Int = 40
    var bateria: Bool = true
    var cabo: Bool = true
    
    func liga (){
        print ("O notebook está com carga é igual a \(bateria)")
    }
    func capacidade (){
        print ("O notebook está sem memoria")
    }
}
var meuNotebook: noteBook = noteBook()
meuNotebook.liga()
meuNotebook.capacidade()
print (meuNotebook.bateria)

class Bicicleta {
    var pneu: Bool = true
    var selim: String = "Macio"
    var corrente: Int = 2
    var quadro: String = "Aluminio"
    
    func pedal (){
        print("A bicicleta é feita para trilha")
    }
    func roubo (){
        print("A bike tem um selim \(selim).")
    }
    func possuiPneu (){
        print("A bike vem com o pneu? \(pneu)")
    }
}
var minhaBike: Bicicleta = Bicicleta()
print(minhaBike.pneu)
minhaBike.roubo()
minhaBike.possuiPneu()
minhaBike.pedal()
print(minhaBike.corrente)
print(minhaBike.quadro)

class sofa{
    var tecido: String = "Linho"
    var modelo: String = "Grande"
    var almofadas: Int = 5
    var temLugar: Bool = true
    
    func lavar(){
        print("Sofa deve ser lavado sempre, pois seu material é \(tecido)")
    }
    func conservar(){
        print("O sofa deve ser lavado")
    }
    func uso(){
        print("O sofa possui \(almofadas) almofadas")
    }
    func local(){
        print("O sofa possui lugares a vontade? \(temLugar)")
    }
}
var meuSofa: sofa = sofa()
print(meuSofa.tecido)
print(meuSofa.modelo)
meuSofa.lavar()
meuSofa.conservar()
meuSofa.local()
meuSofa.uso()
