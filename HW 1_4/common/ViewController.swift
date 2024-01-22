//
//  ViewController.swift
//  HW 1_4
//
//  Created by 1 on 17/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let firstImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .systemCyan
        image.image = UIImage(named: "baby")
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome Back"
        label.font = .systemFont(ofSize: 34, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let signLabel: UILabel = {
        let label = UILabel()
        label.text = "Sign in to continue"
        label.font = .systemFont(ofSize: 20, weight: .light)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let emeilView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 35
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let emeilLabel: UILabel = {
        let label = UILabel()
        label.text = "Employee Id/Email"
        label.textColor = .black
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let emailTF: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 12
        tf.layer.borderColor = UIColor.gray.cgColor
        tf.layer.borderWidth = 2
        tf.placeholder = "Your Email"
        tf.translatesAutoresizingMaskIntoConstraints = false
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        tf.leftView = view
        tf.leftViewMode = .always
        return tf
    }()
    
    private let passWordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textColor = .black
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let passTF: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 12
        tf.layer.borderColor = UIColor.gray.cgColor
        tf.layer.borderWidth = 2
        tf.placeholder = "Your Password"
        tf.translatesAutoresizingMaskIntoConstraints = false
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        tf.leftView = view
        tf.leftViewMode = .always
        return tf
    }()
    
    private let forgotButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot Password?", for: .normal)
        button.tintColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    private let rememberLabel: UILabel = {
        let label = UILabel()
        label.text = "Remember me"
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    private let signButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign in", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 14
        //button.addTarget(self, action: #selector(showNextPage( sender: )), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let accountLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't have a Acccount?"
        label.textColor = .black
        label.font = .systemFont(ofSize: 14, weight: .light)
       // label.textAlignment = .center
       // label.isUserInteractionEnabled = true // Aktiviert die Interaktion für Gesten
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign in", for: .normal)
        button.tintColor = .systemBlue
        button .translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    private func setupUI() {
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
            firstImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 65),
            firstImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            firstImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            firstImage.heightAnchor.constraint(equalToConstant: 256),
            // firstImage.widthAnchor.constraint(equalToConstant: 350)
        ])
        
        NSLayoutConstraint.activate([
            emeilView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 50),
            emeilView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            emeilView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            emeilView.heightAnchor.constraint(equalToConstant: 475),
            emeilView.widthAnchor.constraint(equalToConstant: 320)
        ])
    }
    
    private func setupLabel() {
        view.addSubview(welcomeLabel)
        view.addSubview(signLabel)
        emeilView.addSubview(emeilLabel)
        emeilView.addSubview(passWordLabel)
        emeilView.addSubview(emailTF)
        emeilView.addSubview(rememberLabel)
        emeilView.addSubview(passTF)
        emeilView.addSubview(accountLabel)
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: firstImage.bottomAnchor, constant: 100),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            firstImage.heightAnchor.constraint(equalToConstant: 48),
            firstImage.widthAnchor.constraint(equalToConstant: 226)
        ])
        
        NSLayoutConstraint.activate([
            signLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 8),
            signLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            signLabel.heightAnchor.constraint(equalToConstant: 25),
            signLabel.widthAnchor.constraint(equalToConstant: 165)
        ])
        
        NSLayoutConstraint.activate([
            emeilLabel.topAnchor.constraint(equalTo: emeilView.topAnchor, constant: 43),
            emeilLabel.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            emeilLabel.heightAnchor.constraint(equalToConstant: 15),
            emeilLabel.widthAnchor.constraint(equalToConstant: 193)
        ])
        
        NSLayoutConstraint.activate([
            passWordLabel.topAnchor.constraint(equalTo: emailTF.bottomAnchor, constant: 20),
            passWordLabel.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            passWordLabel.heightAnchor.constraint(equalToConstant: 15),
            passWordLabel.widthAnchor.constraint(equalToConstant: 193)
        ])
        
        NSLayoutConstraint.activate([
            rememberLabel.topAnchor.constraint(equalTo: passTF.bottomAnchor, constant: 35),
            rememberLabel.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 55),
        ])
        
        NSLayoutConstraint.activate([
            accountLabel.bottomAnchor.constraint(equalTo: emeilView.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            accountLabel.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            accountLabel.heightAnchor.constraint(equalToConstant: 18),
            accountLabel.widthAnchor.constraint(equalToConstant: 170)
        ])
        
    }
    
    private func setupTF() {
        emeilView.addSubview(emailTF)
        emeilView.addSubview(passTF)
        
        NSLayoutConstraint.activate([
            emailTF.topAnchor.constraint(equalTo: emeilLabel.bottomAnchor, constant: 10),
            emailTF.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            emailTF.trailingAnchor.constraint(equalTo: emeilView.trailingAnchor, constant: -25),
            emailTF.heightAnchor.constraint(equalToConstant: 35),
            emailTF.widthAnchor.constraint(equalToConstant: 149)
        ])
        
        NSLayoutConstraint.activate([
            passTF.topAnchor.constraint(equalTo: passWordLabel.bottomAnchor, constant: 10),
            passTF.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            passTF.trailingAnchor.constraint(equalTo: emeilView.trailingAnchor, constant: -25),
            passTF.heightAnchor.constraint(equalToConstant: 35),
            passTF.widthAnchor.constraint(equalToConstant: 149)
        ])
    }
    
    private func setupButton() {
        emeilView.addSubview(forgotButton)
        emeilView.addSubview(signButton)
        emeilView.addSubview(signUpButton)
        
        
        NSLayoutConstraint.activate([
            forgotButton.topAnchor.constraint(equalTo: passTF.bottomAnchor, constant: 10),
            forgotButton.trailingAnchor.constraint(equalTo: emeilView.trailingAnchor, constant: -25)
        ]); forgotButton.addTarget(self, action: #selector(goToThirdViewController), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            signButton.topAnchor.constraint(equalTo: rememberLabel.bottomAnchor, constant: 55),
            //            signButton.centerYAnchor.constraint(equalTo: emeilView.centerYAnchor),
            signButton.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 98),
            signButton.trailingAnchor.constraint(equalTo: emeilView.trailingAnchor, constant: -94),
            signButton.heightAnchor.constraint(equalToConstant: 40)
        ]); signButton.addTarget(self, action: #selector(showNextPage), for: .touchUpInside)
    
        NSLayoutConstraint.activate([
            signUpButton.bottomAnchor.constraint(equalTo: emeilView.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            signUpButton.trailingAnchor.constraint(equalTo: emeilView.trailingAnchor, constant: -165),
            signUpButton.heightAnchor.constraint(equalToConstant: 20)
        ]); signUpButton.addTarget(self, action: #selector(goToThirdViewController), for: .touchUpInside)
    }
    
    @objc func goToThirdViewController( sender: UIButton) {
        let third = ThirdViewController()
        navigationController?.pushViewController(third, animated: true)
    }
    
    @objc func showNextPage( sender: UIButton) {
        guard let text = emailTF.text,
              let text1 = passTF.text else {
            return
        }
        
        if text.count < 1 {
            validataTF(tf: emailTF, error: "Please, fill field", borderColor: UIColor.red.cgColor, borderWidth: 2)
        } else if text1.count < 1 {
            validataTF(tf: passTF, error: "Please, fill field", borderColor: UIColor.red.cgColor, borderWidth: 2)

        } else {
            let vc = SecondViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @objc func goToSuccessViewController( sender: UIButton) {
        let success = SuccessViewController()
        navigationController?.pushViewController(success, animated: true)
    }
    
    func validataTF( tf: UITextField, error: String, borderColor: CGColor, borderWidth: Int) {
        tf.placeholder = error
        tf.layer.borderColor = borderColor
        tf.layer.borderWidth = CGFloat(borderWidth)
        
       
   }
    
}


