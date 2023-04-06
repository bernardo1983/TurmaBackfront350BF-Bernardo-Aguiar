//
//  ViewController.swift
//  DesafioTransicaoTelasModalReference
//
//  Created by Bernardo Aguiar Guimarães on 06/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func tappedGoScreen02Button(_ sender: UIButton) {
        performSegue(withIdentifier: "Tela02ViewController", sender: nil)
    }
    
}

