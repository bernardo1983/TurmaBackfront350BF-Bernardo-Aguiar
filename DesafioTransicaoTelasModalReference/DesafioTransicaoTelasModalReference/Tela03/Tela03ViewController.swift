//
//  Tela03ViewController.swift
//  DesafioTransicaoTelasModalReference
//
//  Created by Bernardo Aguiar Guimarães on 06/04/23.
//

import UIKit

class Tela03ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tappedGoScreen04Button(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela04ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela04ViewController") as? Tela04ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    

    @IBAction func tappedVoltarButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
