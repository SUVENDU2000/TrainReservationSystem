//
//  ViewController.swift
//  Confirm Seat
//
//  Created by Suvendu Kumar on 24/03/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userIDOutlet: UITextField!
    @IBOutlet weak var passwordOutlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func didTappedLoginButton(_ sender: UIButton) {
        self.checkCredential()
    }
    
    private func checkCredential() {
        guard let userID = userIDOutlet.text,
              !userID.isEmpty,
              let passwordField = passwordOutlet.text,
              !passwordField.isEmpty else {
            print("Field Empty")
            return
        }
        if userID == userData.userName {
            self.performSegue(withIdentifier: "showLoginSuccessful", sender: nil)
        }
    }
}

struct userData {
    var userName: String
    var email: String
}
