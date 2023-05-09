//
//  ViewController.swift
//  NotificationCenterAula
//
//  Created by Bernardo Aguiar Guimarães on 04/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        titleLabel.text = ""
        configObserver()
    }
    func configObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacbook), name: .macbook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateImac), name: .imac, object: nil)
    }
    
    @objc func updateMacbook(_notification: NSNotification) {
        logoImageView.image = UIImage(named: "Macsuper")
        titleLabel.text = "MacBook Pro"
        view.backgroundColor = .red
    }
    
    @objc func updateImac(_notification: NSNotification) {
        logoImageView.image = UIImage(named: "Imac")
        titleLabel.text = "Imac super"
        view.backgroundColor = .cyan
        
    }

    @IBAction func tappedChooseButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "SelectionViewController", bundle: nil).instantiateViewController(withIdentifier: "SelectionViewController") as? SelectionViewController
        vc?.modalPresentationStyle = .fullScreen
        present(vc ?? UIViewController(), animated: true)
    }
    
}

