//
//  Tela05ViewController.swift
//  DesafioTransicaoTelasModalReference
//
//  Created by Bernardo Aguiar Guimarães on 06/04/23.
//

import UIKit

class Tela05ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tappedGoScreen06Button(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela06ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela06ViewController") as? Tela06ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}
