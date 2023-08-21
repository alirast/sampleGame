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
    
    lazy var bestScoreView: BestScoreLabelView = {
        let label = BestScoreLabelView()
        return label
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
    
    lazy var playButton: UIButton = {
        let playButton = UIButton()
        playButton.translatesAutoresizingMaskIntoConstraints = false
        playButton.setImage(UIImage(named: "playButtonImage"), for: .normal)
        playButton.addTarget(self, action: #selector(didTapPlayButton), for: .touchUpInside)
        return playButton
    }()
    
    lazy var settingsButton: UIButton = {
        let settingsButton = UIButton()
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        settingsButton.setImage(UIImage(named: "settingsButtonImage"), for: .normal)
        settingsButton.addTarget(self, action: #selector(didTapSettingsButton), for: .touchUpInside)
        return settingsButton
    }()
    
    lazy var shopButton: UIButton = {
        let shopButton = UIButton()
        shopButton.translatesAutoresizingMaskIntoConstraints = false
        shopButton.setImage(UIImage(named: "shopButtonImage"), for: .normal)
        shopButton.addTarget(self, action: #selector(didTapShopButton), for: .touchUpInside)
        return shopButton
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
        addSubview(playButton)
        addSubview(settingsButton)
        addSubview(shopButton)
        addSubview(bottomLogoImage)
        
//TODO: - fix everything for 14 plus
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            logoView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            bestScoreView.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 20),
            bestScoreView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            bestScoreCounter.topAnchor.constraint(equalTo: bestScoreView.bottomAnchor, constant: 10),
            bestScoreCounter.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            playButton.topAnchor.constraint(equalTo: bestScoreCounter.bottomAnchor, constant: 40),
            playButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            settingsButton.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            settingsButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 25),
            
            shopButton.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            shopButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -25),
            
            bottomLogoImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            bottomLogoImage.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    
    @objc func didTapPlayButton() {
        print("did tap play button")
    }
    
    @objc func didTapSettingsButton() {
        print("did tap settings button")
    }
    
    @objc func didTapShopButton() {
        print("did tap shop button")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
