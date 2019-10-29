//
//  SecondViewController.swift
//  loginscreen
//
//  Created by Rizul goyal on 2019-10-28.
//  Copyright © 2019 Rizul goyal. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var labelFName: UITextField!
    @IBOutlet weak var labelLName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var labelWelcome: UILabel!
    
    
    @IBAction func controlGender(_ sender: UISegmentedControl) {
    }
    @IBAction func sliderAge(_ sender: UISlider) {
        
    }
    @IBOutlet weak var setAgeLabel: UILabel!
    
    @IBAction func buttonCreateUser(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Error Occured", message: "Please select one option", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Sign In ", style: .default, handler: nil))

        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Ignore", style: .destructive, handler: nil))

        

        self.present(alert, animated: true)
        
        labelWelcome.text="Welcome to the World"

    }
    
    
    

  
}
