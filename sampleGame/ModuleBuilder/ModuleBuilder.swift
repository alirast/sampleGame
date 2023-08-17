//
//  ModuleBuilder.swift
//  sampleGame
//
//  Created by N S on 17.08.2023.
//

import UIKit

class ModuleBuilder: ModuleBuilderProtocol {
    func createMenuModule() -> UIViewController {
        let view = ViewController()
        return view
    }
    
    func createGameModule() -> UIViewController {
        return UIViewController()
    }
    
    func createPauseSubModule() -> UIViewController {
        return UIViewController()
    }
    
    func createSettingsSubModule() -> UIViewController {
        return UIViewController()
    }
    
    func createShopSubModule() -> UIViewController {
        return UIViewController()
    }
    
    func createMatchThreeModule() -> UIViewController {
        return UIViewController()
    }
    
    func createPlayAgainModule() -> UIViewController {
        return UIViewController()
    }
    
    
}
