//
//  Coordinator.swift
//  MofidCodingChallange
//
//  Created by Mamad Shahib on 1/29/1401 AP.
//

import UIKit
protocol Coordinator {
    var  navigationController : UINavigationController {get set}
    func start()
    func presentLoginScreen()
    func presentHomeScreen()
    func presentWebScreen(userPhoneNumber:String)
}
