//
//  Tela04ViewController.swift
//  DesafioTransicaoTelasModalReference
//
//  Created by Bernardo Aguiar Guimarães on 06/04/23.
//

import UIKit

class Tela04ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

    @IBAction func tappedGoScreen05Button(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela05ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela05ViewController") as? Tela05ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
}
