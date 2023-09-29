//
//  ViewController.swift
//  AlertApp
//
//  Created by MAC03 on 27/09/23.
//

import UIKit
import SCLAlertView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_alert(_ sender: Any)
    {
        // Get started
        //SCLAlertView().showError("Error", subTitle: "Something went wrong...Try again!") // Error
        //SCLAlertView().showNotice("Hello Notice", subTitle: "This is a more descriptive notice text.") // Notice
        //SCLAlertView().showWarning("Hello Warning", subTitle: "This is a more descriptive warning text.") // Warning
        //SCLAlertView().showInfo("Hello Info", subTitle: "This is a more descriptive info text.") // Info
        //SCLAlertView().showEdit("Hello Edit", subTitle: "This is a more descriptive info text.") // Edit
        
        
        let appearance = SCLAlertView.SCLAppearance(
            showCloseButton: false
        )
        let alert=SCLAlertView(appearance: appearance)
        alert.addButton("Ok") {
            print("This is OK Button!")
        }
        alert.addButton("MORE") {
            print("This is MORE Button!")
        }
        alert.showSuccess("Success", subTitle: "Signup Successfully!")
        
        
    }
    
}

