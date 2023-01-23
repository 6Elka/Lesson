//
//  InfoViewController.swift
//  TextField
//
//  Created by Artem on 23.01.2023.
//

import UIKit

protocol ChangeInfoDelegate: AnyObject {
    func updateInfo(_ name: String, _ surname: String, _ country: String, _ city: String, _ image: UIImage)
}

final class InfoViewController: UIViewController {
    
    //MARK: - Image
    private let userImage = UIImageView().createUserImage()
    
    //MARK: - Label
    let name = UILabel().list("Artem")
    let surname = UILabel().list("Artemov")
    let city = UILabel().list("Voronezh")
    let country = UILabel().list("Russia")
    
    //MARK: - List
    private let listName = UILabel().list("Name: ")
    private let listSurname = UILabel().list("Surname: ")
    private let listCountry = UILabel().list("Country: ")
    private let listCity = UILabel().list("City: ")
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialize()
        title = "Artem Artemov"
    }
}
//MARK: - Private Init
extension InfoViewController {
    private func initialize() {
        view.backgroundColor = .gray
        
        //MARK: - Right Bar Button
        navigationController?.navigationBar.tintColor = .white        
        tabBarItem.standardAppearance?.backgroundColor = .red
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(changeUserInfo))
        
        
        view.addSubview(userImage)
        userImage.layer.cornerRadius = 100
        
        //MARK: Name
        view.addSubview(listName)
        view.addSubview(name)
        
        //MARK: - Surname
        view.addSubview(listSurname)
        view.addSubview(surname)
        
        //MARK: - Country
        view.addSubview(listCountry)
        view.addSubview(country)
        
        //MARK: - City
        view.addSubview(listCity)
        view.addSubview(city)
        
        //MARK: - Contraints
        NSLayoutConstraint.activate([
            userImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            userImage.widthAnchor.constraint(equalToConstant: 200),
            userImage.heightAnchor.constraint(equalToConstant: 200),
            
            listName.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 40),
            listName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            name.centerYAnchor.constraint(equalTo: listName.centerYAnchor),
            name.leadingAnchor.constraint(equalTo: listName.trailingAnchor, constant: 10),
            
            listSurname.topAnchor.constraint(equalTo: listName.bottomAnchor, constant: 20),
            listSurname.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            surname.centerYAnchor.constraint(equalTo: listSurname.centerYAnchor),
            surname.leadingAnchor.constraint(equalTo: listSurname.trailingAnchor, constant: 10),
            
            listCountry.topAnchor.constraint(equalTo: surname.bottomAnchor, constant: 20),
            listCountry.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            country.centerYAnchor.constraint(equalTo: listCountry.centerYAnchor),
            country.leadingAnchor.constraint(equalTo: listCountry.trailingAnchor, constant: 10),
            
            listCity.topAnchor.constraint(equalTo: listCountry.bottomAnchor, constant: 20),
            listCity.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            city.centerYAnchor.constraint(equalTo: listCity.centerYAnchor),
            city.leadingAnchor.constraint(equalTo: listCity.trailingAnchor, constant: 10)
        ])
    }
    @objc func changeUserInfo() {
        let change = ChangeInfoViewController()
        change.name.text = self.name.text
        change.surname.text = self.surname.text
        change.country.text = self.country.text
        change.city.text = self.city.text
        change.userImage.image = self.userImage.image
        change.delegate = self
        self.present(change, animated: true)
    }
}

//MARK: - Protocol
extension InfoViewController: ChangeInfoDelegate {
    func updateInfo(_ name: String, _ surname: String, _ country: String, _ city: String, _ image: UIImage) {
        self.name.text = name
        self.surname.text = surname
        self.country.text = country
        self.city.text = city
        self.userImage.image = image
    }
}
