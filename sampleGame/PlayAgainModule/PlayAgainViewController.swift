//
//  PlayAgainViewController.swift
//  sampleGame
//
//  Created by N S on 21.08.2023.
//

import UIKit

class PlayAgainViewController: UIViewController {
    
    private var playAgainView = PlayAgainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = playAgainView
    }
}
