//
//  ViewController.swift
//  PrimeiroTableView350BF
//
//  Created by Bernardo Aguiar Guimarães on 06/04/23.
//

import UIKit
// MARK: PASSO A PASSO TABLEVIEW COM XIB

// 1 - CRIAR TABLEVIEW E FAZER LIGAÇÃO
// 2 - CONFIGURAR DELEGATE e DATASOURCE
// 3 - Criar celula customizavel
// 4 - Registrar celula
// 5 - configurar metodos da tableview



class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
   
    var personList: [Person] = [Person(name: "Caio", surname: "Test1"),
                                Person(name: "Felipe", surname: "Test2"),
                                Person(name: "Joao", surname: "Test3"),
                                Person(name: "Anderson", surname: "Test4"),
                                Person(name: "Lucas", surname: "Test5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        //configurar protocolos
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
        //registrar a celula
        
    }


}
// DATASOURCE -> responsavel pelos dados
extension ViewController: UITableViewDataSource {
    
    // numero de linhas por SEÇÃO
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    // responsavel por criar as celulas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        cell?.setupCell(person: personList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
    
    
}
// DELEGATE -> responsavel pelas ações/intereções do usuário
extension ViewController: UITableViewDelegate {
    
}

