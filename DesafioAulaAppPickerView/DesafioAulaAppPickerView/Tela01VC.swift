//
//  Tela01VC.swift
//  DesafioAulaAppPickerView
//
//  Created by Bernardo Aguiar Guimarães on 02/05/23.
//

import UIKit

class Tela01VC: UIViewController {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var editPictureButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var data: [Profile] = []
    let imagePicker: UIImagePickerController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
        configTableView()
        configImagePicker()

        
    }
    func configImagePicker() {
        imagePicker.delegate = self
    }
    
    
    func configElements() {
        view.backgroundColor = .yellow
        nameLabel.text = "Nome:"
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.image = UIImage(systemName: "person.circle.fill")
        profileImageView.tintColor = .black
        profileImageView.clipsToBounds = true
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
        nameTextField.placeholder = "Digite seu nome:"
        addButton.setTitle("Adicionar", for: .normal)
        editPictureButton.setTitle("Editar foto", for: .normal)
        
    }
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }

    @IBAction func tappededitPictureButton(_ sender: UIButton) {
        imagePicker.allowsEditing = true
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.sourceType = .camera
        } else {
            imagePicker.sourceType = .photoLibrary
        }
        present(imagePicker, animated: true)
    }
    
    @IBAction func tappedaddButton(_ sender: UIButton) {
        if let name = nameTextField.text, !name.isEmpty {
            data.append(Profile(name: nameTextField.text ?? "", photo: profileImageView.image ?? UIImage()))
            tableView.reloadData()
            nameTextField.text = ""
            profileImageView.image = UIImage(systemName: "person.circle.fill")
            tableView.scrollToRow(at: IndexPath(row: data.count - 1, section: 0), at: .bottom, animated: true)
        }else {
            let alertController = UIAlertController(title: "Ops!", message: "Informe o nome correto", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "OK", style: .default) { action in
                print("okkkkkk")
            }
            alertController.addAction(okButton)
            present(alertController, animated: true)
        }
    }
}
extension Tela01VC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.setupCell(profile: data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    
}
extension Tela01VC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.profileImageView.image = image
        }
        picker.dismiss(animated: true)
    }
}

