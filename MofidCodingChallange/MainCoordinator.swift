//
//  MainCoordinator.swift
//  MofidCodingChallange
//
//  Created by Mamad Shahib on 1/29/1401 AP.
//

import UIKit

class MainCoordinator : Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController:UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let defaultVC = ViewController()
        defaultVC.coordinator = self
        navigationController.pushViewController(defaultVC, animated: false)
    }
    func presentLoginScreen() {
        let loginScreen = LoginViewController()
        navigationController.pushViewController(loginScreen, animated: false)
    }
    
    func presentHomeScreen() {
        let homeScreen = HomeViewController()
        navigationController.pushViewController(homeScreen, animated: false)
    }
    
}
