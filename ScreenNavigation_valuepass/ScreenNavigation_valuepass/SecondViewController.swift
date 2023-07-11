//
//  SecondViewController.swift
//  ScreenNavigation_valuepass
//
//  Created by MAC03 on 04/07/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lbl_name: UILabel!
    
    var str="" //object
    override func viewDidLoad() {
        super.viewDidLoad()

        //lbl_name.text=str
        
        lbl_name.text=(UserDefaults.standard.value(forKey: "name") as! String)
    }
    

}
