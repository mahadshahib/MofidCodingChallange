//
//  Coordinator.swift
//  MofidCodingChallange
//
//  Created by Mamad Shahib on 1/29/1401 AP.
//

import UIKit
protocol Coordinator {
    var childCoordinators : [Coordinator] {get set}
    var  navigationController : UINavigationController {get set}
    func start()
    func presentLoginScreen()
    func presentHomeScreen()
}
