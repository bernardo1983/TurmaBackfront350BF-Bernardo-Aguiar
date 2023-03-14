//
//  main.swift
//  Heranca
//
//  Created by Caio Fabrini on 09/03/23.
//

import Foundation


// MARK: - Herança

// Classe Pai / Super Class

// CLASSE MAIS GENERICA OU CLASSE QUE CONTENHA ALGO QUE POSSA SER REAPROVEITADO NAS CLASSES FILHAS/ SUB CLASS

class Animal {
    
    var idade: Int = 10
    
    func comer() {
        print("O animal está comendo!")
    }
    
}

class Cavalo: Animal {

}

class Boi: Animal {
    
}

class Ovelha: Animal {
    
}

// Classe filha -> Sub class
// A classe filha contem TUDO oque a classe pai CONTEM, TANTO CARACTERISTICAS COMO AÇÕES

//var meuCavalo: Cavalo = Cavalo()
//meuCavalo.comer()

// Classe pai
class Pessoa {
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
}


class Caio: Pessoa {

    var peso: Double
    
    init(peso: Double, nome: String) {
        self.peso = peso
        super.init(nome: nome)
    }
    
    
}

var meuNomeBarbara: Caio = Caio(peso: 82, nome: "Caio")

print(meuNomeBarbara.nome)
print(meuNomeBarbara.peso)

// DESAFIO PARA PASSAR PARA CASA

// Criar uma classe pai na qual tenha 3 caracteristicas e 2 ações.
// Criar 2 classes filhas distintas, porem ambas vão herdar da classe pai(super). Cada classe filha terá 3 caracteristicas especificas.
// A classe pai terá construtor para setar seus valores.
// Uma das classes filhas não deve conter construtor.
// Uma das classes filhas deve conter contrutor indicando os valores de todas as suas propriedades.


class Tecnologia {
    
    var wifi: Bool
    var tela: Bool
    var teclado: String
    
    init(wifi: Bool, tela: Bool, teclado: String) {
        self.wifi = wifi
        self.tela = tela
        self.teclado = teclado
    }
    
    func conectarPessoa() {
        print("A tecnologia está conectado com as pessoas")
    }
    
    func ajudarPessoas() {
        print("A tecnologia ajuda pessoas")
    }
    
}

class Celular: Tecnologia {
    var marca: String
    var modelo: String
    var ano: Int
    
    init(marca: String, modelo: String, ano: Int, wifi: Bool, tela: Bool, teclado: String) {
        self.marca = marca
        self.modelo = modelo
        self.ano = ano
        super.init(wifi: wifi, tela: tela, teclado: teclado)
    }
    
}

class Mac: Tecnologia {
    var marca: String = "Apple"
    var modelo: String = "MacBook Pro"
    var ano: Int = 2020
}


var meuCelular: Celular = Celular(marca: "Apple", modelo: "Iphone 14", ano: 2023, wifi: true, tela: true, teclado: "PT-BR")


//    "" -> String vazia
//    nil -> SIGNIFICA NENHUM VALOR


//Desafios de Construtores:
// Nota: Vocês tem total liberdade de escolher o tipo das variáveis. Sugiro que usem tipos diversos.


// Crie uma classe chamada "Livro" que tenha as propriedades "titulo", "autor" e "preço". Em seguida, crie uma subclasse chamada "LivroDigital" que herde da classe "Livro" e tenha uma propriedade adicional chamada "formato". Crie dois construtores para a classe "LivroDigital". O primeiro deve aceitar o "formato" como parâmetro enquanto o segundo não deve aceitá-lo. Quando o "formato" não for fornecido, defina-o como "PDF". Defina então um método chamado "analisarPreco" que receba o "titulo" e o "preço" do livro como parâmetros e imprima "Livro caro" se o preço for maior que 25 ou "Livro barato", caso contrário.

class Livro {
    var titulo: String
    var autor: String
    var preco: Double
    
    init(titulo: String, autor: String, preco: Double) {
        self.titulo = titulo
        self.autor = autor
        self.preco = preco
    }
}

class LivroDigital: Livro {
    var formato: String //PDF
    
    init(titulo: String, autor: String, preco: Double, formato: String) {
        self.formato = formato
        super.init(titulo: titulo, autor: autor, preco: preco)
    }
    override convenience init(titulo: String, autor: String, preco: Double) {
        
        self.init(titulo: titulo, autor: autor, preco: preco)
        
        
    }
    func analisarPreco() {
        if preco > 25.0{
            print("Livro caro")
        }else{
            print("Livro barato")
        }
    }
    
}

var eraUmaVez: LivroDigital = LivroDigital(titulo: "Era uma vez", autor: "Jose", preco: 90.0)
//analisarPreco()

//LivroDigital = LivroDigital(titulo: "Era uma vez", autor: "Jose", preco: 90.0)




// Crie uma classe chamada "FormaGeometrica" com as propriedades "largura" e "altura". Em seguida, crie uma subclasse chamada "Retangulo" que tenha um método "calcularArea" que calcula a área do retângulo (largura * altura). Certifique-se de que o construtor da subclasse chame o construtor da classe pai para definir a largura e a altura e imprima o resultado.


// Crie uma classe chamada "ContaBancaria" com as propriedades "saldo" e "tipo". Em seguida, crie uma subclasse chamada "ContaCorrente" que tenha uma propriedade adicional chamada "limite" e um método "atualizarSaldo" que adiciona o limite ao saldo da conta. Certifique-se de que o construtor da subclasse chame o construtor da classe pai para definir o "saldo" e o "tipo". Você pode ainda criar um método "imprimirSaldo" que imprime o saldo atualizado da conta.

