//
//  ViewController.swift
//  DesafioTextField
//
//  Created by Bernardo Aguiar Guimarães on 23/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nomeTextField: UITextField!
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var cadastrarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nomeTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        nomeTextField.placeholder = "Nome:"
        emailTextField.placeholder = "E-mail"
        passwordTextField.placeholder = "Senha"
        cadastrarButton.isEnabled = false
        nomeTextField.layer.borderColor = UIColor.red.cgColor
        nomeTextField.layer.borderWidth = 2
        emailTextField.layer.borderColor = UIColor.red.cgColor
        emailTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.red.cgColor
        passwordTextField.layer.borderWidth = 2
    }


    @IBAction func tappedButton(_ sender: UIButton) {
        print("Cadastro realizado com sucesso")
    }
    
}
extension ViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 2
            
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.hasText == false {
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth = 2
        }else {
            textField.layer.borderWidth = 0
        }
        if nomeTextField.hasText && emailTextField.hasText && passwordTextField.hasText{
            cadastrarButton.isEnabled = true
        }
            
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nomeTextField {
            emailTextField.becomeFirstResponder()
        } else if  textField == emailTextField {
            passwordTextField.becomeFirstResponder()
                    
        } else {
            textField.resignFirstResponder()
        }
        print(#function)
        return  true
    }
}

