//
//  Alert.swift
//  MofidCodingChallange
//
//  Created by Mamad Shahib on 1/29/1401 AP.
//

import Foundation
import UIKit

final class Alert {
    static func showMessage(_ target:UIViewController ,_ message: String , coordinator:MainCoordinator) {
        let alert = UIAlertController(title: "Oops!", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK!", style: .cancel, handler:nil))
        alert.addAction(UIAlertAction(title: "Display on WebView", style: .default, handler: { action in
            coordinator.presentWebScreen()
        }))
        target.present(alert, animated:true, completion:nil)
    }
}
