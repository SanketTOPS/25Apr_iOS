//
//  SignupViewController.swift
//  DBApp
//
//  Created by MAC03 on 15/08/23.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var txt_firstname: UITextField!
    @IBOutlet weak var txt_lastname: UITextField!
    @IBOutlet weak var txt_username: UITextField!
    @IBOutlet weak var txt_password: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_signpup(_ sender: Any)
    {
        newuser()
    }
    
    func newuser()
    {
        if txt_firstname.text=="" || txt_lastname.text=="" || txt_username.text=="" || txt_password.text==""
        {
            let alert=UIAlertController(title: "Error", message: "Please input proper details!", preferredStyle: .alert)
            let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
            txt_username.layer.borderColor=UIColor.red.cgColor
            txt_username.layer.borderWidth=2
            
            txt_password.layer.borderColor=UIColor.red.cgColor
            txt_password.layer.borderWidth=2
            
            txt_firstname.layer.borderColor=UIColor.red.cgColor
            txt_firstname.layer.borderWidth=2
            
            txt_lastname.layer.borderColor=UIColor.red.cgColor
            txt_lastname.layer.borderWidth=2
        }
        else
        {
            let newuser_query="insert into signup(firstname,lastname,username,password)values('\(txt_firstname.text!)','\(txt_lastname.text!)','\(txt_username.text!)','\(txt_password.text!)')"
            print(newuser_query)
            
            let dml=DMLOperations()
            let status=dml.dmlservices(query: newuser_query)
            
            if status==true
            {
                let alert=UIAlertController(title: "Success", message: "Signup Successfully!", preferredStyle: .alert)
                let ok=UIAlertAction(title: "OK", style: .default, handler: {ACTION in
                    
                    self.txt_firstname.text=""
                    self.txt_lastname.text=""
                    self.txt_username.text=""
                    self.txt_password.text=""
                    
                    //let loginVC=self.storyboard?.instantiateViewController(identifier: "loginVC") as! ViewController
                    self.navigationController?.popViewController(animated: true)
                })
                alert.addAction(ok)
                present(alert, animated: true, completion: nil)
            }
            else
            {
                let alert=UIAlertController(title: "Error", message: "Something went wrong...Try again!😟", preferredStyle: .alert)
                let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
                let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
                alert.addAction(ok)
                alert.addAction(more)
                present(alert, animated: true, completion: nil)
            }
        }
    }
    
}
