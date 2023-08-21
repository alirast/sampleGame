//
//  PlayAgainView.swift
//  sampleGame
//
//  Created by N S on 21.08.2023.
//

import UIKit

class PlayAgainView: UIView {
    
    lazy var bestScoreLabel: BestScoreLabelView = {
        let label = BestScoreLabelView()
        return label
    }()
    
    lazy var bestScoreCounterLabel: BestScoreCounterLabel = {
        let counterLabel = BestScoreCounterLabel()
        return counterLabel
    }()
    
    lazy var playAgainButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "playAgainButtonImage"), for: .normal)
        button.addTarget(self, action: #selector(didTapPlayAgainButton), for: .touchUpInside)
        return button
    }()
    
    @objc func didTapPlayAgainButton() {
        print("did tap play again button")
    }
}
