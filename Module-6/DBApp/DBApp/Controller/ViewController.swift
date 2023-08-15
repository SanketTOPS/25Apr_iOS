//
//  ViewController.swift
//  DBApp
//
//  Created by MAC03 on 10/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_username: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_login(_ sender: Any) {
    }
    
    @IBAction func btn_signup(_ sender: Any)
    {
        let signupVC=storyboard?.instantiateViewController(identifier: "signupVC") as! SignupViewController
        navigationController?.pushViewController(signupVC, animated: true)
    }
}

