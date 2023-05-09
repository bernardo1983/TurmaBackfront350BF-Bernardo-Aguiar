//
//  CustomTableViewCell.swift
//  DesafioNotificationCenter
//
//  Created by Bernardo Aguiar Guimarães on 09/05/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: CustomTableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        nameLabel.font = UIFont.systemFont(ofSize: 25.0, weight: .semibold)
    }
    func setupCell (cadastro: Cadastro) {
        nameLabel.text = cadastro.name
    }
}
