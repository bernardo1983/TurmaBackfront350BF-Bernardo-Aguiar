//
//  ViewController.swift
//  DesafioTransicaoTelasModalReference
//
//  Created by Bernardo Aguiar Guimarães on 06/04/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var wordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordTextField.placeholder = "Digite aqui"
        
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    //navigationController?.isNavigationBarHidden = true


    
    @IBAction func tappedGoScreen02Button(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        vc?.name = wordTextField.text ?? ""
    }
    
    
}
















