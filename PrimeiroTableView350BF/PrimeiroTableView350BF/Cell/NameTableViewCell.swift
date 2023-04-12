//
//  NameTableViewCell.swift
//  PrimeiroTableView350BF
//
//  Created by Bernardo Aguiar Guimarães on 06/04/23.
//

import UIKit

//MARK: CRIAR O SETUPCELL

class NameTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var surNameLabel: UILabel!
    
    // static: tem função para não gerar instancia, cada vez que instancia é gerado novo objeto.
    
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    
    //Ciclo de vida de uma celula, igual ao viewdidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(person: Person) {
        nameLabel.text = person.name
        surNameLabel.text = person.surname
        
    }

}
