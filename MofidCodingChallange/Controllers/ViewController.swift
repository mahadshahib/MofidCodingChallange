//
//  ViewController.swift
//  MofidCodingChallange
//
//  Created by Mamad Shahib on 1/29/1401 AP.
//

import UIKit

class ViewController: UIViewController {
    let userManager = UserManager.shared
    weak var coordinator : MainCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let _ = userManager.currentUser {
            coordinator?.presentHomeScreen()
        } else {
            coordinator?.presentLoginScreen()
        }
    }
}

