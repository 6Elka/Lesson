//
//  ViewController.swift
//  TextField
//
//  Created by Artem on 23.01.2023.
//

import UIKit

final class RegistrationViewController: UIViewController {
    
    //MARK: - Label
    private let mainLabel = UILabel().createLabel()
    
    //MARK: - TextField
    private let email = UITextField().createEmail()
    private let password = UITextField().createPassword()
    private let name = UITextField().createName()
    private let surname = UITextField().createSurname()
    private let country = UITextField().createCountry()
    private let city = UITextField().createCity()
    
    //MARK: - Validator
    private let validator = Validator()
    
    //MARK: - Button
    private let submit = UIButton().createSubmit()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialize()
    }
}
//MARK: - Private Init
extension RegistrationViewController {
    private func initialize() {
        view.backgroundColor = .white
        
        view.addSubview(mainLabel)
        view.addSubview(email)
        view.addSubview(password)
        view.addSubview(name)
        view.addSubview(surname)
        view.addSubview(country)
        view.addSubview(city)
        view.addSubview(submit)
        
        //MARK: - Constraint
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            email.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 50),
            email.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            email.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            email.heightAnchor.constraint(equalToConstant: 40),
            
            password.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 30),
            password.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            password.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            password.heightAnchor.constraint(equalToConstant: 40),
            
            name.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 30),
            name.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            name.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            name.heightAnchor.constraint(equalToConstant: 40),
            
            surname.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 30),
            surname.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            surname.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            surname.heightAnchor.constraint(equalToConstant: 40),
            
            country.topAnchor.constraint(equalTo: surname.bottomAnchor, constant: 30),
            country.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            country.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            country.heightAnchor.constraint(equalToConstant: 40),
            
            city.topAnchor.constraint(equalTo: country.bottomAnchor, constant: 30),
            city.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            city.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            city.heightAnchor.constraint(equalToConstant: 40),
            
            submit.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            submit.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            submit.widthAnchor.constraint(equalToConstant: 100),
            submit.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        //MARK: - Delegate TextField
        email.delegate = self
        password.delegate = self
        name.delegate = self
        surname.delegate = self
        country.delegate = self
        city.delegate = self
        
        //MARK: - Notification
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { _ in
            self.view.frame.origin.y = -75
        }
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil) { _ in
            self.view.frame.origin.y = .zero
        }
        //MARK: Button Target
        submit.addTarget(self, action: #selector(infoSubmit), for: .touchUpInside)
    }
    @objc func infoSubmit() {
        if city.text == "Voronezh" {
            let info = InfoViewController()
            info.modalPresentationStyle = .fullScreen
            info.modalTransitionStyle = .crossDissolve
            self.navigationController?.pushViewController(info, animated: true)
        }
       
    }
}
//MARK: - UITextFieldDelegate
extension RegistrationViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == email && email.text == "Artem06" {
            self.password.becomeFirstResponder()
        }
        if textField == password && password.text == "12345" {
            self.name.becomeFirstResponder()
        }
        if textField == name && name.text == "Artem" {
            self.surname.becomeFirstResponder()
        }
        if textField == surname && surname.text == "Artemov" {
            self.country.becomeFirstResponder()
        }
        if textField == country && country.text == "Russia" {
            self.city.becomeFirstResponder()
        }
        if textField == city && city.text == "Voronezh" {
            self.city.resignFirstResponder()
            let info = InfoViewController()
            info.modalPresentationStyle = .fullScreen
            info.modalTransitionStyle = .crossDissolve
            self.present(info, animated: true)
        }
        return true
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        switch textField {
        case password: return validator.hasNumber(string)
        default: break
        }
        return true
    }
}
