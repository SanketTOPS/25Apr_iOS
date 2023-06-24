//
//  ViewController.swift
//  Dynamic Datepicker
//
//  Created by MAC03 on 24/06/23.
//

import UIKit

class ViewController: UIViewController {

    var datepkr=UIDatePicker()
    @IBOutlet weak var txt_date: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        datepkr.preferredDatePickerStyle = .wheels
        txt_date.inputView=datepkr
    }


}

