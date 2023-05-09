//
//  SelectionViewController.swift
//  NotificationCenterAula
//
//  Created by Bernardo Aguiar Guimarães on 07/05/23.
//

import UIKit

class SelectionViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var macBookButton: UIButton!
    @IBOutlet weak var iMacButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedMacBookButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: .macbook, object: UIColor.red)
        dismiss(animated: true)
    }
    
    @IBAction func tappedImacButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: .imac, object: nil)
        dismiss(animated: true)

    }
}
