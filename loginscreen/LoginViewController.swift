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
    
    @IBOutlet weak var rememberMeButton: UISwitch!
    
    @IBOutlet weak var txtUserPassword: UITextField!
    
    
    @IBAction func buttonLogin(_ sender: UIButton) {
        let nameS = txtUserName.text!
        print("Hello \(nameS)")
        let def = txtUserPassword.text
        
        if nameS == "Rizulabc"
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
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let homeVC = sb.instantiateViewController(identifier: "homeVC") as HomeViewController
        homeVC.name = nameS
//        self.present(homeVC, animated: true, completion: nil)
        navigationController?.pushViewController(homeVC, animated: true)
    }
    
    @IBAction func RemeberMe(_ sender: UISwitch)
    {
        if rememberMeButton.isOn
        {
            let email1 = txtUserName.text!
            let passtemp1 = txtUserPassword.text!
            UserDefaults.standard.set(email1, forKey: "email")
            UserDefaults.standard.set(passtemp1, forKey: "pass")
            
        }
        
    
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

    @IBOutlet weak var labelRemember: UILabel!
    @IBAction func remember(_ sender: UISwitch) {
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtUserName.text=UserDefaults.standard.string(forKey: "email")
        txtUserPassword.text=UserDefaults.standard.string(forKey: "pass")
        
    
        
        // Do any additional setup after loading the view.
    }


}

