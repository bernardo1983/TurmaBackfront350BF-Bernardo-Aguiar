//
//  TabBarController.swift
//  PrimeiroProjetoTabBarAula
//
//  Created by Bernardo Aguiar Guimarães on 25/04/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func configItems() {
        guard let items = tabBar.items else { return}
        items [0].title = "Tela01"
        items [0].image = UIImage(systemName: "pencil.circle.fill")
    }

   
}
