//
//  ViewController.swift
//  Desafio2TextField
//
//  Created by Bernardo Aguiar Guimarães on 23/03/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var adressTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var passwordconfirmTextField: UITextField!
    
    @IBOutlet weak var buttonTextField: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        adressTextField.delegate = self
        passwordTextField.delegate = self
        passwordconfirmTextField.delegate = self
        nameTextField.placeholder = "Nome:"
        adressTextField.placeholder = "Endereço:"
        passwordTextField.placeholder = "Senha:"
        passwordconfirmTextField.placeholder = "Confirme sua senha:"
        buttonTextField.isEnabled = false
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
        nameTextField.layer.borderWidth = 2
        adressTextField.layer.borderColor = UIColor.lightGray.cgColor
        adressTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextField.layer.borderWidth = 2
        passwordconfirmTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordconfirmTextField.layer.borderWidth = 2
        
    }

    @IBAction func tappedButtonTextField(_ sender: UIButton) {
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
            buttonTextField.isEnabled = false
        }
        else if nameTextField.hasText == true && adressTextField.hasText == true && passwordTextField.hasText == true && passwordconfirmTextField.hasText == true && passwordTextField.text == passwordconfirmTextField.text {
            buttonTextField.isEnabled = true
            passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
            passwordTextField.layer.borderWidth = 2
            passwordconfirmTextField.layer.borderColor = UIColor.lightGray.cgColor
            passwordconfirmTextField.layer.borderWidth = 2
            
        } else {
            textField.layer.borderWidth = 0
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.layer.borderWidth = 2
            passwordconfirmTextField.layer.borderColor = UIColor.red.cgColor
            passwordconfirmTextField.layer.borderWidth = 2
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            adressTextField.becomeFirstResponder()
        }  else if textField == adressTextField {
            passwordTextField.becomeFirstResponder()
        } else if textField == passwordTextField {
            passwordconfirmTextField.becomeFirstResponder()
        }
        
        else {
            textField.resignFirstResponder()
        }
        return true
    }
}

//if textField == nomeTextField {
//    emailTextField.becomeFirstResponder()
//} else if  textField == emailTextField {
//    passwordTextField.becomeFirstResponder()
//
//} else {
//    textField.resignFirstResponder()
//}
//
//return  true
