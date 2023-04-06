//
//  Tela06ViewController.swift
//  DesafioTransicaoTelasModalReference
//
//  Created by Bernardo Aguiar Guimarães on 06/04/23.
//

import UIKit

class Tela06ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func tappedGoScreen01(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
