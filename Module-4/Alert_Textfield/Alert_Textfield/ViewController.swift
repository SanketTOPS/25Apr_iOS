//
//  ViewController.swift
//  Alert_Textfield
//
//  Created by MAC03 on 20/06/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbl_username: UILabel!
    
    @IBOutlet weak var lbl_password: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_login(_ sender: Any)
    {
        let alert_login=UIAlertController(title: "Login", message: "Enter username and password!", preferredStyle: .alert)
        alert_login.addTextField { (txtUsername) in
            txtUsername.placeholder="Username"
            txtUsername.textAlignment = .center
        }
        alert_login.addTextField { (txtPassword) in
            txtPassword.placeholder="Password"
            txtPassword.isSecureTextEntry=true
            txtPassword.textAlignment = .center
        }
        let btn1=UIAlertAction(title: "Login", style: .destructive, handler:{ACTION in
            
            self.lbl_username.text=alert_login.textFields![0].text!
            self.lbl_password.text=alert_login.textFields![1].text!
        })
        let btn2=UIAlertAction(title: "Cancel", style:.cancel, handler: nil)
        alert_login.addAction(btn1)
        alert_login.addAction(btn2)
        present(alert_login, animated: true, completion: nil)
    }
    
}

