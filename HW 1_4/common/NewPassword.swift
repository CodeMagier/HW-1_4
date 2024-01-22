//
//  NewPassword.swift
//  HW 1_4
//
//  Created by 1 on 21/1/24.
//

import UIKit

class NewPassword: UIViewController {
    
    
    private let firstImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .systemCyan
        image.image = UIImage(named: "1")
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let passwordView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 35
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let passLabel = MakerView().makeLabel(text: "New Password")
    private let cofirmLabel = MakerView().makeLabel(text: "Confirm Password")
    private let passTF = MakerView().makeTF(placeholder: "Your New Password")
    private let confirmTF = MakerView().makeTF(placeholder: "Your Confirm Password")
    
    private let submitButton = MakerView().makeButton(setTitle: "Submit", backgroundColor: .systemBlue)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        setupImage()
        setupView()
        setupLabel()
        setupTF()
        setupButton()
        
        
    }
    
    private func setupImage() {
        view.addSubview(firstImage)
        
        NSLayoutConstraint.activate([
            firstImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
            firstImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstImage.heightAnchor.constraint(equalToConstant: 148),
            firstImage.widthAnchor.constraint(equalToConstant: 148)
        ])
    }
    
    private func setupView() {
        view.addSubview(passwordView)
        
        NSLayoutConstraint.activate([
            passwordView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 50),
            passwordView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            passwordView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -0),
            passwordView.heightAnchor.constraint(equalToConstant: 500)
        ])
        
    }
    private func setupLabel() {
        passwordView.addSubview(passLabel)
        passwordView.addSubview(cofirmLabel)
        passwordView.addSubview(passTF)
        
        
        NSLayoutConstraint.activate([
            passLabel.topAnchor.constraint(equalTo: passwordView.topAnchor, constant: 120),
            passLabel.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 25),
            passLabel.heightAnchor.constraint(equalToConstant: 15),
            passLabel.widthAnchor.constraint(equalToConstant: 177)
        ])
        
        NSLayoutConstraint.activate([
            cofirmLabel.topAnchor.constraint(equalTo: passTF.bottomAnchor, constant: 20),
            cofirmLabel.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 25)
        ])
    }
    
    private func setupTF() {
        passwordView.addSubview(passTF)
        passwordView.addSubview(confirmTF)
        
        NSLayoutConstraint.activate([
            passTF.topAnchor.constraint(equalTo: passLabel.bottomAnchor, constant: 5),
            passTF.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 25),
            passTF.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: -25),
            passTF.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        NSLayoutConstraint.activate([
            confirmTF.topAnchor.constraint(equalTo: cofirmLabel.bottomAnchor, constant: 5),
            confirmTF.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 25),
            confirmTF.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: -25),
            confirmTF.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private func setupButton() {
        passwordView.addSubview(submitButton)
        
        NSLayoutConstraint.activate([
            submitButton.topAnchor.constraint(equalTo: confirmTF.bottomAnchor, constant: 55),
            submitButton.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 98),
            submitButton.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: -94),
            submitButton.heightAnchor.constraint(equalToConstant: 40)
        ]); submitButton.addTarget(self, action: #selector(goToSuccessViewController), for: .touchUpInside)
    }
    
    @objc func goToSuccessViewController( sender: UIButton) {
        
        guard let password = passTF.text, 
                let confirPassword = confirmTF.text,
              password == confirPassword else { return }
        if password.count < 1 {
            validateTF(tf: passTF, error: "Please, fill field", borderColor: UIColor.red.cgColor, borderWidth: 2)
        }
        if confirPassword.count < 1 {
            validateTF(tf: confirmTF, error:  "Please, fill field", 
                       borderColor: UIColor.red.cgColor,
                       borderWidth: 2)
            
        } else {
            let success = SuccessViewController()
            present(success, animated: true)
        }

    }
    
    func validateTF(tf: UITextField, error: String?, borderColor: CGColor, borderWidth: Int) {
        tf.placeholder = error
        tf.layer.borderColor = UIColor.red.cgColor
        tf.layer.borderWidth = CGFloat(borderWidth)
        
    }
}
