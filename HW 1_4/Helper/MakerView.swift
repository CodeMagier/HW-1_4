//
//  MakerView.swift
//  HW 1_4
//
//  Created by 1 on 20/1/24.
//

import UIKit

class MakerView {
    
    func makeLabel(text: String = "",
                   textSize: CGFloat = 14, 
                   textWeigt: UIFont.Weight = .light,
                   numberOfLines: Int? = 0,
                   textColor: UIColor = .black ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: textSize, weight: textWeigt)
        label.textColor = textColor
        label.numberOfLines = numberOfLines!
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }
    
    func makeTF(cornerRadius: CGFloat = 12,
                borderColor: CGColor = UIColor.gray.cgColor,
                backgroundColor: UIColor = .white,
                borderWidth: CGFloat = 2,
                placeholder: String = "",
                isEnabled: Bool = true,
                leftViewMode: UITextField.ViewMode = .always) -> UITextField {
        var tf = UITextField()
        tf.layer.cornerRadius = cornerRadius
        tf.layer.borderColor = borderColor
        tf.backgroundColor = backgroundColor
        tf.layer.borderWidth = borderWidth
        tf.placeholder = placeholder
        tf.isEnabled = isEnabled
        tf.translatesAutoresizingMaskIntoConstraints = false
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        tf.leftView = view
        tf.leftViewMode = leftViewMode
        return tf
    }
    
    func makeButton(setTitle: String, forState: UIControl.State = .normal, tintColor: UIColor = .white, backgroundColor: UIColor?, cornerRadius: CGFloat = 14) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(setTitle, for: forState)
        button.tintColor = tintColor
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = cornerRadius
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }

}
