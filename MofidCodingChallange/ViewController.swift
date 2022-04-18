//
//  ViewController.swift
//  MofidCodingChallange
//
//  Created by Mamad Shahib on 1/29/1401 AP.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    let manager = UserManager.shared
    override func viewDidLoad() {
        super.viewDidLoad()
        if manager.currentUser == nil {
            view.backgroundColor = .red
        } else {
            view.backgroundColor = .green
        }
    }


    @IBAction func buttonDidTapped(_ sender: Any) {
     
        
    }
    @IBAction func secondButtonTaapped(_ sender: Any) {
  
    }
}

