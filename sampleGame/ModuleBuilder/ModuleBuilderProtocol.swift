//
//  ModuleBuilderProtocol.swift
//  sampleGame
//
//  Created by N S on 17.08.2023.
//

import UIKit

protocol ModuleBuilderProtocol {
    func createMenuModule() -> MenuViewController
    func createGameModule() -> UIViewController
    func createPauseSubModule() -> UIViewController
    func createSettingsSubModule() -> UIViewController
    func createShopSubModule() -> UIViewController
    func createMatchThreeModule() -> UIViewController
    func createPlayAgainModule() -> UIViewController
}
