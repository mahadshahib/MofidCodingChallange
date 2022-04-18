//
//  Alert.swift
//  MofidCodingChallange
//
//  Created by Mamad Shahib on 1/29/1401 AP.
//

import Foundation
import UIKit

final class Alert {
    static func showMessage(_ target:UIViewController ,_ message: String) {
        let alert = UIAlertController(title: "Oops!", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK!", style: .cancel, handler:nil))
        target.present(alert, animated:true, completion:nil)
    }
}
