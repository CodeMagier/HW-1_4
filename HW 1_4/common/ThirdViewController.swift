//
//  ThirdViewController.swift
//  HW 1_4
//
//  Created by 1 on 17/1/24.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private let firstImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .systemCyan
        image.image = UIImage(named: "1")
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
    
    
    private var smsTF: UITextField = MakerView().makeTF(backgroundColor: .gray,placeholder: "sms code", isEnabled: false)
    private let employeeTF: UITextField = MakerView().makeTF(placeholder: "Your Employee")
    
    private let troubleLabel: UILabel = MakerView().makeLabel(text: "Trouble Logiging in?", textSize: 24, textWeigt: .bold, textColor: .white)
    private let enterLabel: UILabel = MakerView().makeLabel(text: "Enter your email or mobile number and number and we'll send you a OTP to get back into your account", numberOfLines: 2, textColor: .white)
    private let employeeLabel: UILabel = MakerView().makeLabel(text: "Employee Id")
    private let enterYourLabel: UILabel = MakerView().makeLabel(text: "Enter Your mobile number or Email id")
    
    private let getButtop: UIButton = MakerView().makeButton(setTitle: "Get OTP", tintColor: .systemBlue, backgroundColor: .yellow, cornerRadius: 12 )
    private let submitButton: UIButton = MakerView().makeButton(setTitle: "Submit", backgroundColor: .systemBlue)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        setupView()
        setupLabel()
        setupTF()
        setupButtop()
        
    }
    
    private func setupView() {
        view.addSubview(firstImage)
        view.addSubview(emeilView)
        
        NSLayoutConstraint.activate([
            firstImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 65),
            firstImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstImage.heightAnchor.constraint(equalToConstant: 148),
            firstImage.widthAnchor.constraint(equalToConstant: 148)
        ])
        
        NSLayoutConstraint.activate([
            emeilView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 50),
            emeilView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            emeilView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            emeilView.heightAnchor.constraint(equalToConstant: 450),
            emeilView.widthAnchor.constraint(equalToConstant: 360)
        ])
    }
    
    
    private func setupLabel() {
        view.addSubview(troubleLabel)
        view.addSubview(enterLabel)
        emeilView.addSubview(employeeLabel)
        view.addSubview(smsTF)
        emeilView.addSubview(enterYourLabel)
        emeilView.addSubview(employeeTF)
        
        NSLayoutConstraint.activate([
            troubleLabel.topAnchor.constraint(equalTo: smsTF.bottomAnchor, constant: 20),
            troubleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            enterLabel.topAnchor.constraint(equalTo: troubleLabel.bottomAnchor, constant: 10),
            enterLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            enterLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
        
        NSLayoutConstraint.activate([
            employeeLabel.topAnchor.constraint(equalTo: emeilView.topAnchor, constant: 15),
            employeeLabel.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            employeeLabel.heightAnchor.constraint(equalToConstant: 15),
            employeeLabel.widthAnchor.constraint(equalToConstant: 177)
        ])
        
        NSLayoutConstraint.activate([
            enterYourLabel.topAnchor.constraint(equalTo: employeeTF.bottomAnchor, constant: 15),
            enterYourLabel.centerXAnchor.constraint(equalTo: emeilView.centerXAnchor),
            //enterYourLabel.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            enterYourLabel.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private func setupTF() {
        view.addSubview(smsTF)
        emeilView.addSubview(employeeTF)
        
        
        NSLayoutConstraint.activate([
            smsTF.topAnchor.constraint(equalTo: firstImage.bottomAnchor, constant: 30),
            smsTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            smsTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            smsTF.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        NSLayoutConstraint.activate([
            employeeTF.topAnchor.constraint(equalTo: employeeLabel.bottomAnchor, constant: 5),
            employeeTF.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 25),
            employeeTF.trailingAnchor.constraint(equalTo: emeilView.trailingAnchor, constant: -25),
            employeeTF.heightAnchor.constraint(equalToConstant: 35),
            employeeTF.widthAnchor.constraint(equalToConstant: 149)
        ])
    }
    
    private func setupButtop() {
        emeilView.addSubview(submitButton)
        emeilView.addSubview(getButtop)
        
        
        NSLayoutConstraint.activate([
            submitButton.bottomAnchor.constraint(equalTo: emeilView.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            submitButton.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 98),
            submitButton.trailingAnchor.constraint(equalTo: emeilView.trailingAnchor, constant: -94),
            submitButton.heightAnchor.constraint(equalToConstant: 40)
        ]); submitButton.addTarget(self, action: #selector(goToNewPassword), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            getButtop.topAnchor.constraint(equalTo: enterYourLabel.bottomAnchor, constant: 15),
            getButtop.leadingAnchor.constraint(equalTo: emeilView.leadingAnchor, constant: 240),
            getButtop.trailingAnchor.constraint(equalTo: emeilView.trailingAnchor, constant: -25),
            getButtop.heightAnchor.constraint(equalToConstant: 40)
        ]); getButtop.addTarget(self, action: #selector(getButtopTapped), for: .touchUpInside)
            
        }
    @objc func getButtopTapped() { // GET OTP
        
        guard let text = employeeTF.text, !text.isEmpty else {
            validataTF(tf: employeeTF, error: "Please, fill field", borderColor: UIColor.red.cgColor, borderWidth: 2)
            return
        }
        
        smsTF.isEnabled = true
        smsTF.backgroundColor = .white

        }
    
    @objc func goToNewPassword( sender: UIButton) {
        guard let sms = smsTF.text else { return }
        if sms.count < 1 {
            validataTF(tf: smsTF, error: "Please, fill field", borderColor: UIColor.red.cgColor, borderWidth: 2)
            
        } else {
            
            let new = NewPassword()
            navigationController?.pushViewController(new, animated: true)
        }
    
    }
    
    func validataTF( tf: UITextField, error: String, borderColor: CGColor, borderWidth: Int) {
        tf.placeholder = error
        tf.layer.borderColor = borderColor
        tf.layer.borderWidth = CGFloat(borderWidth)
    }
    
}

