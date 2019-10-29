//
//  ViewController.swift
//  loginscreen
//
//  Created by Rizul goyal on 2019-10-26.
//  Copyright © 2019 Rizul goyal. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    
    
    @IBOutlet weak var txtUserPassword: UITextField!
    
    
    @IBAction func buttonLogin(_ sender: UIButton) {
        let name = txtUserName.text!
        print("Hello \(name)")
    }
    
    @IBAction func buttonSignIn(_ sender: UIButton)
    {
                let abc = txtUserName.text
        let def = txtUserPassword.text
        
        if abc == "Rizul"
        {
            if def == "8029"
            {
                print("Signed In ")
            }
        }
        else
        {
            print("username or password is incorrect")
        }
//        print("\(abc) Rizul")
        //let abc = txtUserName.text!
    
        //print("Hello \(abc)")
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

