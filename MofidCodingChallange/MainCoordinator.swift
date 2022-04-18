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
         DispatchQueue.main.async { [weak self] in
        let loginScreen = LoginViewController()
             loginScreen.coordinator = self
             self?.navigationController.pushViewController(loginScreen, animated: false)
         }
    }
    
    func presentHomeScreen() {
        DispatchQueue.main.async { [weak self] in
        let homeScreen = HomeViewController()
            homeScreen.coordinator = self
            self?.navigationController.pushViewController(homeScreen, animated: false)
        }
    }
    func presentWebScreen() {
        DispatchQueue.main.async { [weak self] in
        let webScreen = WebViewController()
            self?.navigationController.pushViewController(webScreen, animated: false)
        }
    }
    
}
