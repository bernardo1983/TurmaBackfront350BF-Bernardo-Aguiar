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



class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        //configurar protocolos
        tableView.delegate = self
        tableView.dataSource = self 
        //registrar a celula
        
    }


}
// DATASOURCE -> responsavel pelos dados
extension ViewController: UITableViewDataSource {
    
    // numero de linhas por SEÇÃO
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
// DELEGATE -> responsavel pelas ações/intereções do usuário
extension ViewController: UITableViewDelegate {
    
}

