//
//  ViewController.swift
//  ScreenNavigation_valuepass
//
//  Created by MAC03 on 04/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_submit(_ sender: Any)
    {
        let secondVC=storyboard?.instantiateViewController(identifier: "secondVC") as! SecondViewController
        //secondVC.str=txt_name.text!
        
        UserDefaults.standard.setValue(txt_name.text, forKey: "name")
        //navigationController?.pushViewController(secondVC, animated: true)
        
        present(secondVC, animated: true, completion: nil)
    }
    
}

