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
        
        if UserDefaults.standard.bool(forKey: "is_login")==true
        {
            let homevc=self.storyboard?.instantiateViewController(identifier: "homeVC") as! HomeViewController
            homevc.modalPresentationStyle = .fullScreen
            self.present(homevc, animated: true, completion: nil)
        }
        
            
    
    }

    @IBAction func btn_login(_ sender: Any)
    {
        userLogin()
    }
    
    func userLogin()
    {
        if txt_username.text=="" || txt_password.text==""
        {
            let alert=UIAlertController(title: "Error", message: "Please input valid username or password!", preferredStyle: .alert)
            let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
            txt_username.layer.borderColor=UIColor.red.cgColor
            txt_username.layer.borderWidth=2
            
            txt_password.layer.borderColor=UIColor.red.cgColor
            txt_password.layer.borderWidth=2
        }
        else
        {
            let login_query="select * from signup where username='\(txt_username.text!)' and password='\(txt_password.text!)'"
            print(login_query)
            
            let dml=DMLOperations()
            let n=dml.fetchuser(query: login_query)
            
            if n.count==0
            {
                let alert=UIAlertController(title: "Error", message: "Username and Password does not match!", preferredStyle: .alert)
                let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(ok)
                present(alert, animated: true, completion: nil)
            }
            else
            {
                let alert=UIAlertController(title: "Success", message: "Login Successfully!", preferredStyle: .alert)
                let ok=UIAlertAction(title: "OK", style: .default, handler:{ACTION in
                    
                    //Login Session
                    
                    UserDefaults.standard.set(true, forKey: "is_login")
        
                    let homevc=self.storyboard?.instantiateViewController(identifier: "homeVC") as! HomeViewController
                    //navigationController?.pushViewController(homevc, animated: true)
                    homevc.modalPresentationStyle = .fullScreen
                    self.present(homevc, animated: true, completion: nil)
                })
                alert.addAction(ok)
                present(alert, animated: true, completion: nil)
        }
        }
    }
    
    @IBAction func btn_signup(_ sender: Any)
    {
        let signupVC=storyboard?.instantiateViewController(identifier: "signupVC") as! SignupViewController
        navigationController?.pushViewController(signupVC, animated: true)
    }
}

