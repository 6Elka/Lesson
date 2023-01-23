//
//  ChangeInfoViewController.swift
//  TextField
//
//  Created by Artem on 23.01.2023.
//

import UIKit

final class ChangeInfoViewController: UIViewController {

    weak var delegate: ChangeInfoDelegate!
    
    //MARK: ImageUSer
    let userImage = UIImageView().createUserImage()
    
    //MARK: - Segment
    private var segment = UISegmentedControl().createSegment()
    
    //MARK: - TextField
    let name = UITextField().createName()
    let surname = UITextField().createSurname()
    let country = UITextField().createCountry()
    let city = UITextField().createCity()
    
    //MARK: - Button
    private let submit = UIButton().createSubmit()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialize()
        
    }
}
//MARK: - Private Init {
extension ChangeInfoViewController {
    private func initialize() {
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        
        //MARK: - TextField
        view.addSubview(name)
        view.addSubview(surname)
        view.addSubview(country)
        view.addSubview(city)
        
        //MARK: - Button
        view.addSubview(submit)
        
        //MARK: - Image
        view.addSubview(userImage)
        userImage.layer.cornerRadius = 100
        
        //MARK: - Segment
        view.addSubview(segment)
        
        NSLayoutConstraint.activate([
            
            userImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            userImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userImage.heightAnchor.constraint(equalToConstant: 200),
            userImage.widthAnchor.constraint(equalToConstant: 200),
            
            segment.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 20),
            segment.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            segment.heightAnchor.constraint(equalToConstant: 20),
            segment.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            name.topAnchor.constraint(equalTo: segment.bottomAnchor, constant: 20),
            name.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            name.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            name.heightAnchor.constraint(equalToConstant: 30),
            
            surname.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 20),
            surname.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            surname.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            surname.heightAnchor.constraint(equalToConstant: 30),
            
            country.topAnchor.constraint(equalTo: surname.bottomAnchor, constant: 20),
            country.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            country.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            country.heightAnchor.constraint(equalToConstant: 30),
            
            city.topAnchor.constraint(equalTo: country.bottomAnchor, constant: 20),
            city.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            city.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            city.heightAnchor.constraint(equalToConstant: 30),
            
            submit.topAnchor.constraint(equalTo: city.bottomAnchor, constant: 40),
            submit.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            submit.widthAnchor.constraint(equalToConstant: 100),
            submit.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        //MARK: - Button Target
        submit.addTarget(self, action: #selector(cancel), for: .touchUpInside)
        
        //MARK: - Segment Target
        segment.addTarget(self, action: #selector(changeImage), for: .valueChanged)
    }
    @objc func cancel() {
        delegate.updateInfo(name.text ?? "", surname.text ?? "", country.text ?? "", city.text ?? "", userImage.image!)
        dismiss(animated: true)
    }
    @objc func changeImage(item: UISegmentedControl) {
        switch item.selectedSegmentIndex {
        case 0: userImage.image = UIImage(named: "1")
        case 1: userImage.image = UIImage(named: "2")
        case 2: userImage.image = UIImage(named: "3")
        default: break
        }
    }
}

