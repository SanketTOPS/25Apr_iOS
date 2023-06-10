//
//  ViewController.swift
//  DemoApp
//
//  Created by MAC03 on 06/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_password: UITextField!
    @IBOutlet weak var txt_mobile: UITextField!
    @IBOutlet weak var txt_city: UITextField!
    @IBOutlet weak var txt_name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func btn_submit(_ sender: Any)
    {
        view.backgroundColor=UIColor.red
        
        txt_name.text="Sanket"
        txt_city.text="Rajkot"
        txt_mobile.text="7845123567"
        txt_password.text="tops?123"
        
        view.endEditing(true)
    }
}

