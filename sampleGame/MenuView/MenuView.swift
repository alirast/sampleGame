//
//  MenuView.swift
//  sampleGame
//
//  Created by N S on 18.08.2023.
//

import UIKit

final class MenuView: UIView {
    
    lazy var logoView: UIImageView = {
        let logoView = UIImageView(image: UIImage(named: "logoImage"))
        logoView.translatesAutoresizingMaskIntoConstraints = false
        logoView.sizeToFit()
        logoView.contentMode = .scaleAspectFit
        return logoView
    }()
    
    lazy var bestScoreView: UILabel = {
        let bestScoreLabel = UILabel()
        bestScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        bestScoreLabel.textAlignment = .center
        bestScoreLabel.sizeToFit()
        bestScoreLabel.numberOfLines = 1
        bestScoreLabel.textColor = .white
        bestScoreLabel.text = "Best Score"
        bestScoreLabel.font = UIFont.boldSystemFont(ofSize: 20)
        return bestScoreLabel
    }()
    
    lazy var bestScoreCounter: UILabel = {
        var bestScoreCounter = UILabel()
        bestScoreCounter.translatesAutoresizingMaskIntoConstraints = false
        bestScoreCounter.textAlignment = .center
        bestScoreCounter.sizeToFit()
        bestScoreCounter.numberOfLines = 1
        bestScoreCounter.textColor = .white
        bestScoreCounter.text = "123"
        bestScoreCounter.font = UIFont.boldSystemFont(ofSize: 27)
        return bestScoreCounter
    }()
    
    lazy var bottomLogoImage: UIImageView = {
        let bottomImage = UIImageView(image: UIImage(named: "bottomLogoImage"))
        bottomImage.translatesAutoresizingMaskIntoConstraints = false
        bottomImage.sizeToFit()
        bottomImage.contentMode = .scaleAspectFit
        return bottomImage
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(named: "mainGreenColor")
        addSubview(logoView)
        addSubview(bestScoreView)
        addSubview(bestScoreCounter)
        addSubview(bottomLogoImage)
        
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            logoView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            bestScoreView.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 20),
            bestScoreView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            bestScoreCounter.topAnchor.constraint(equalTo: bestScoreView.bottomAnchor, constant: 10),
            bestScoreCounter.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            bottomLogoImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            bottomLogoImage.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
