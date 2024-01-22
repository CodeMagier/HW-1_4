//
//  SecondViewController.swift
//  HW 1_4
//
//  Created by 1 on 17/1/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    private let firstImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .systemCyan
        image.image = UIImage(named: "baby")
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let emeilView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 35
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let nameLabel: UILabel = MakerView().makeLabel(text: "Full Name")
    private let numberLabel: UILabel = MakerView().makeLabel(text: "Mobile Number")
    private let emailLabel: UILabel = MakerView().makeLabel(text: "Email")
    private let userLabel: UILabel = MakerView().makeLabel(text: "User Name")
    private let passLabel: UILabel = MakerView().makeLabel(text: "Password")
    private let confirmLabel: UILabel = MakerView().makeLabel(text: "Confirm Password")
    private let accountLabel: UILabel = MakerView().makeLabel(text:  "Already have a Account?")
    
    
    private let nameTF: UITextField = MakerView().makeTF(placeholder: "Your Name")
    private let numberTF: UITextField = MakerView().makeTF(placeholder: "Your Namber")
    private let emailTF: UITextField = MakerView().makeTF(placeholder: "Your Email")
    private let userTF: UITextField = MakerView().makeTF(placeholder: "User Name")
    private let passTF: UITextField = MakerView().makeTF(placeholder: "Your Password")
    private let confirmTF: UITextField = MakerView().makeTF(placeholder: "Confirm Password")
    
    
    private let signButton: UIButton = MakerView().makeButton(setTitle: "Sign Up", backgroundColor: .systemBlue)
    private let signInButton: UIButton = MakerView().makeButton(setTitle: "Sign in", tintColor: .systemBlue, backgroundColor: .white)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        setupUI1()
        
    }
    
    private func setupUI1() {
        view.backgroundColor = .systemCyan
        setupView()
        setupLabel()
        setupTF()
        setupButton()
    }
    
    private func setupView() {
        view.addSubview(firstImage)
        view.addSubview(emeilView)
        
        NSLayoutConstraint.activate([
            firstImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            firstImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            firstImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            firstImage.heightAnchor.constraint(equalToConstant: 256),
            firstImage.widthAnchor.constraint(equalToConstant: 350)
        ])
        
        NSLayoutConstraint.activate([
            emeilView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 50),
            emeilView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            emeilView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            emeilView.heightAnchor.constraint(equalToConstant: 600),
            emeilView.widthAnchor.constraint(equalToConstant: 320)
        ])
        
    }
    
    private func setupLabel() {
        emeilView.addSubview(nameLabel)
        emeilView.addSubview(numberLabel)
        emeilView.addSubview(nameTF)
        emeilView.addSubview(emailLabel)
        emeilView.addSubview(numberTF)
        emeilView.addSubview(userLabel)
        emeilView.addSubview(emailTF)
        emeilView.addSubview(passLabel)
        emeilView.addSubview(userTF)
        emeilView.addSubview(confirmLabel)
        emeilView.addSubview(passTF)
        emeilView.addSubview(accountLabel)
        
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: emeilView.topAnchor, constant: 15),
            nameLabel.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            nameLabel.heightAnchor.constraint(equalToConstant: 15),
            nameLabel.widthAnchor.constraint(equalToConstant: 177)
        ])
        
        NSLayoutConstraint.activate([
            numberLabel.topAnchor.constraint(equalTo: nameTF.bottomAnchor, constant: 15),
            numberLabel.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            numberLabel.heightAnchor.constraint(equalToConstant: 15),
            numberLabel.widthAnchor.constraint(equalToConstant: 177)
        ])
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: numberTF.bottomAnchor, constant: 15),
            emailLabel.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            emailLabel.heightAnchor.constraint(equalToConstant: 15),
            emailLabel.widthAnchor.constraint(equalToConstant: 177)
        ])
        
        NSLayoutConstraint.activate([
            userLabel.topAnchor.constraint(equalTo: emailTF.bottomAnchor, constant: 15),
            userLabel.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            userLabel.heightAnchor.constraint(equalToConstant: 15),
            userLabel.widthAnchor.constraint(equalToConstant: 177)
        ])
        
        NSLayoutConstraint.activate([
            passLabel.topAnchor.constraint(equalTo: userTF.bottomAnchor, constant: 15),
            passLabel.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            passLabel.heightAnchor.constraint(equalToConstant: 15),
            passLabel.widthAnchor.constraint(equalToConstant: 177)
        ])
        
        NSLayoutConstraint.activate([
            confirmLabel.topAnchor.constraint(equalTo: passTF.bottomAnchor, constant: 15),
            confirmLabel.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            confirmLabel.heightAnchor.constraint(equalToConstant: 15),
            confirmLabel.widthAnchor.constraint(equalToConstant: 177)
        ])
        NSLayoutConstraint.activate([
            accountLabel.bottomAnchor.constraint(equalTo: emeilView.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            accountLabel.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            accountLabel.heightAnchor.constraint(equalToConstant: 18),
            accountLabel.widthAnchor.constraint(equalToConstant: 170)
        ])
        
    }
    
    private func setupTF() {
        emeilView.addSubview(nameTF)
        emeilView.addSubview(numberTF)
        emeilView.addSubview(emailTF)
        emeilView.addSubview(userTF)
        emeilView.addSubview(passTF)
        emeilView.addSubview(confirmTF)
        
        NSLayoutConstraint.activate([
            nameTF.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            nameTF.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            nameTF.trailingAnchor.constraint(equalTo: emeilView.trailingAnchor, constant: -25),
            nameTF.heightAnchor.constraint(equalToConstant: 35),
            nameTF.widthAnchor.constraint(equalToConstant: 149)
        ])
        
        NSLayoutConstraint.activate([
            numberTF.topAnchor.constraint(equalTo: numberLabel.bottomAnchor, constant: 5),
            numberTF.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            numberTF.trailingAnchor.constraint(equalTo: emeilView.trailingAnchor, constant: -25),
            numberTF.heightAnchor.constraint(equalToConstant: 35),
            numberTF.widthAnchor.constraint(equalToConstant: 149)
        ])
        
        NSLayoutConstraint.activate([
            emailTF.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5),
            emailTF.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            emailTF.trailingAnchor.constraint(equalTo: emeilView.trailingAnchor, constant: -25),
            emailTF.heightAnchor.constraint(equalToConstant: 35),
            emailTF.widthAnchor.constraint(equalToConstant: 149)
        ])
        
        NSLayoutConstraint.activate([
            userTF.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 5),
            userTF.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            userTF.trailingAnchor.constraint(equalTo: emeilView.trailingAnchor, constant: -25),
            userTF.heightAnchor.constraint(equalToConstant: 35),
            userTF.widthAnchor.constraint(equalToConstant: 149)
        ])
        
        NSLayoutConstraint.activate([
            passTF.topAnchor.constraint(equalTo: passLabel.bottomAnchor, constant: 5),
            passTF.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            passTF.trailingAnchor.constraint(equalTo: emeilView.trailingAnchor, constant: -25),
            passTF.heightAnchor.constraint(equalToConstant: 35),
            passTF.widthAnchor.constraint(equalToConstant: 149)
        ])
        
        NSLayoutConstraint.activate([
            confirmTF.topAnchor.constraint(equalTo: confirmLabel.bottomAnchor, constant: 5),
            confirmTF.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            confirmTF.trailingAnchor.constraint(equalTo: emeilView.trailingAnchor, constant: -25),
            confirmTF.heightAnchor.constraint(equalToConstant: 35),
            confirmTF.widthAnchor.constraint(equalToConstant: 149)
        ])
    }
    
    private func setupButton() {
        emeilView.addSubview(signButton)
        emeilView.addSubview(signInButton)
        
        NSLayoutConstraint.activate([
            signButton.topAnchor.constraint(equalTo: confirmTF.bottomAnchor, constant: 30),
            signButton.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 98),
            signButton.trailingAnchor.constraint(equalTo: emeilView.trailingAnchor, constant: -94),
            signButton.heightAnchor.constraint(equalToConstant: 40)
        ]); signButton.addTarget(self, action: #selector(goToTSuccessViewControlle), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            signInButton.bottomAnchor.constraint(equalTo: emeilView.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            signInButton.trailingAnchor.constraint(equalTo: emeilView.trailingAnchor, constant: -160),
            signInButton.heightAnchor.constraint(equalToConstant: 20)
        ]); signInButton.addTarget(self, action: #selector(goToViewController), for: .touchUpInside)
        
    }
    
    
    @objc func goToTSuccessViewControlle(sender: UIButton) {
        guard let text1 = nameTF.text,
              let text2 = numberTF.text,
              let text3 = emailTF.text,
              let text4 = userTF.text,
              let text5 = passTF.text,
              let text6 = confirmTF.text,
              text5 == text6 else { return }
        
        
        if text1.count < 1 {
            validataTF(tf: nameTF, error: "Please, fill field", borderColor: UIColor.red.cgColor, borderWidth: 2)
            
        } else if text2.count < 1 {
            validataTF(tf: numberTF, error: "Please, fill field", borderColor: UIColor.red.cgColor, borderWidth: 2)
        } else if text3.count < 1 {
            validataTF(tf: emailTF, error: "Please, fill field", borderColor: UIColor.red.cgColor, borderWidth: 2)
        } else if text4.count < 1 {
            validataTF(tf: userTF, error: "Please, fill field", borderColor: UIColor.red.cgColor, borderWidth: 2)
        } else if text5.count < 1 {
            validataTF(tf: passTF, error: "Please, fill field", borderColor: UIColor.red.cgColor, borderWidth: 2)
        }else if text6.count < 1 && text5 != text6 {
            validataTF(tf: confirmTF, error: "df", borderColor: UIColor.red.cgColor, borderWidth: 2)
        }
        else {
            let success = SuccessViewController()
            navigationController?.pushViewController(success, animated: true)
        }
    }
    
    func validataTF(tf: UITextField, error: String, borderColor: CGColor, borderWidth: Int) {
        tf.placeholder = error
        tf.layer.borderColor = borderColor
        tf.layer.borderWidth = CGFloat(borderWidth)
    }
    
    @objc func goToViewController( sender: UIButton) {
        let view = ViewController()
        navigationController?.pushViewController(view, animated: true)
        
    }
}




