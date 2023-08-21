//
//  BestScoreCounterLabel.swift
//  sampleGame
//
//  Created by N S on 21.08.2023.
//

import UIKit

class BestScoreCounterLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    private func setup() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textAlignment = .center
        self.sizeToFit()
        self.numberOfLines = 1
        self.textColor = .white
        self.text = "123"
        self.font = UIFont.boldSystemFont(ofSize: 27)
    }
    
    required init?(coder: NSCoder) {
        fatalError("BestScoreCounterLabel custom view has not been implemented")
    }
}
