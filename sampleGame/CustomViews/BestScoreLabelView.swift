//
//  BestScoreLabelView.swift
//  sampleGame
//
//  Created by N S on 21.08.2023.
//

import UIKit

class BestScoreLabelView: UILabel {
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
        self.text = "Best Score"
        self.font = UIFont.boldSystemFont(ofSize: 20)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
