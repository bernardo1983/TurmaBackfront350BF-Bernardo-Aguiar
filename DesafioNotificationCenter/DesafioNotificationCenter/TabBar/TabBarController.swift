//
//  ViewController.swift
//  DesafioNotificationCenter
//
//  Created by Bernardo Aguiar Guimarães on 09/05/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configTabBar()
    }
    func configTabBar(){
        guard let items = tabBar.items else { return}
        items [0].title = "Dados"
        items [0].image = UIImage(systemName: "info.circle")
        items [1].title = "Cadastro"
        items [1].image = UIImage(systemName: "pencil.circle.fill")
        
        tabBar.layer.borderWidth = 0.2
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }
    


}

