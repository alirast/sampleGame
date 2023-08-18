//
//  MenuView.swift
//  sampleGame
//
//  Created by N S on 18.08.2023.
//

import UIKit

final class MenuView: UIView {
    
    lazy var logoView: UIImageView = {
        var logoView = UIImageView(image: UIImage(named: "logoImage"))
        logoView.translatesAutoresizingMaskIntoConstraints = false
        logoView.sizeToFit()
        logoView.contentMode = .scaleAspectFit
        return logoView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(named: "mainGreenColor")
        addSubview(logoView)
        
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            logoView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
