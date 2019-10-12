//
//  SignUpScreen.swift
//  BookSwap
//
//  Created by RV on 10/12/19.
//  Copyright © 2019 RV. All rights reserved.
//

import UIKit

class SignUpScreen: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var userName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func signUpPressed(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: userName.text!, password: password.text!) { authResult, error in
            // ...
        }
        
    }
    
}
