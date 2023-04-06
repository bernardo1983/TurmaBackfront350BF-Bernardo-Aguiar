//
//  Tela02ViewController.swift
//  DesafioTransicaoTelasModalReference
//
//  Created by Bernardo Aguiar Guimarães on 06/04/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                

        
    }
    
    
    

    
    @IBAction func tappedBackButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}

