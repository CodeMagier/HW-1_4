//
//  SuccessViewController.swift
//  HW 1_4
//
//  Created by 1 on 20/1/24.
//

import UIKit

class SuccessViewController: UIViewController {
    
    private let successImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .systemCyan
        image.image = ._2
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        setupImage()
    }

    private func setupImage() {
        view.addSubview(successImage)
        
        NSLayoutConstraint.activate([
            successImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            successImage.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}


