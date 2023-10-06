//
//  ViewController.swift
//  DropdownApp
//
//  Created by MAC03 on 27/09/23.
//

import UIKit
import iOSDropDown

class ViewController: UIViewController {

    @IBOutlet weak var txt_city: DropDown!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        txt_city.optionArray=["Rajkot","Surat","Baroda","Jamnagar","Ahmedabad"]
        
    }


}

