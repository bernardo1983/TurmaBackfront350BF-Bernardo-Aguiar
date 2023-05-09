//
//  CustomTableViewCell.swift
//  DesafioAulaAppPickerView
//
//  Created by Bernardo Aguiar Guimarães on 02/05/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    static let identifier: String = String(describing: CustomTableViewCell.self)
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
//        userImageView.image = UIImage(systemName: "person")
//        nameLabel.text = "Teste"
    }
    
    public func setupCell(profile: Profile) {
        userImageView.image = profile.photo
        nameLabel.text = profile.name
    }

   
}
