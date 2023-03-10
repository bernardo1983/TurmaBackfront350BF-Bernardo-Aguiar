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

class Bike {
    var temPneu: Bool = true
    var cor: String = "Azul"
    var temBuzina: Bool = false
    var quantidadePortaGarrafa: Int = 1
    var possuiSeguro: Bool = false
    
    func andar() {
        print("Não é possível andar, pois está quebrada")
    }
    
    func estacionar() {
        print("Sempre estacione em local seguro!")
    }
}

class Elefante {
    var peso: Double = 1000.0
    var cor: String = "Marrom"
    var idade: Int = 50
    var continente: String = "Africa"
    
    func local() {
        print("O elefante mora na savana, no meio da \(continente).")
    }
    
    func comer() {
        print("O elefante come muito")
    }
    
    func idoso() {
        print("O elefante é idoso, pois tem \(idade) de idade.")
    }
    
}

// Dar vida ao objeto -> quando geramos a instancia -> ()
var meuCarro: Automovel = Automovel()


// Construtores
// Criamos um construtor com a palavra reservada init e com isso indicamos TODOS OS VALORES DAS VARIAVEIS OU CONSTANTES QUE NÃO SE INICIAM COM VALOR.
// Construtor é usado quando a variavel não tem o seu valor.

class Pessoa {
    
    var nome: String
    var altura: Double
    var peso: Double
    var tamanhoCalcado: Int
    
    
    init(nome: String, altura: Double, peso: Double, tamanhoCalcado: Int) {
        self.nome = nome
        self.altura = altura
        self.peso = peso
        self.tamanhoCalcado = tamanhoCalcado
    }
}

var caio: Pessoa = Pessoa(nome: "Caio", altura: 1.84, peso: 84, tamanhoCalcado: 44)
var matheus: Pessoa = Pessoa(nome: "Matheus", altura: 1.65, peso: 69, tamanhoCalcado: 40)
//print(caio.nome)
//print(caio.altura)
//print(caio.peso)

//  Referencia uma das principais caracteristicas de uma classe

print(caio.nome)
print(matheus.nome)

caio.nome = "Caio Fabrini"
matheus.nome = "Matheus Souza"

print(caio.nome)
print(matheus.nome)

// caio é igual a matheus
caio = matheus

print(caio.nome)
print(matheus.nome)


caio.nome = "Alberto"

print(caio.nome)
print(matheus.nome)

matheus.nome = "Jorge"

print(caio.nome)
print(matheus.nome)

















class NoteBook{
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

var meuNotebook: NoteBook = NoteBook()
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


class Sofa{
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
var meuSofa: Sofa = Sofa()
print(meuSofa.tecido)
print(meuSofa.modelo)
meuSofa.lavar()
meuSofa.conservar()
meuSofa.local()
meuSofa.uso()
