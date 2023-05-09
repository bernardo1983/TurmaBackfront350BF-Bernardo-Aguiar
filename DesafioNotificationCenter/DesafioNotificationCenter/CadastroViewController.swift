//
//  CadastroViewController.swift
//  DesafioNotificationCenter
//
//  Created by Bernardo Aguiar Guimarães on 09/05/23.
//

import UIKit

class CadastroViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var cadastroLabel: UILabel!
    
    var alert: AlertController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert = AlertController(controller: self)
        configCadastroView()
        
    }
    func configCadastroView() {
        view.backgroundColor = .cyan
        cadastroLabel.text = "Cadastro"
        cadastroLabel.font = UIFont.systemFont(ofSize: 40.0, weight: .bold)
        textField.placeholder = "Insira um nome"
        
    }
    
    @IBAction func tappedAddButton(_ sender: UIButton) {
        if textField.hasText == false {
            self.alert?.alertInformation(title: "Atenção!", message: "É necessário inserir um nome!")
        }else {
            NotificationCenter.default.post(name: .name, object: textField.text)
            tabBarController?.selectedIndex = 0
            textField.text = ""
        }
    }
    
}

