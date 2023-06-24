//
//  ViewController.swift
//  DatepickerApp
//
//  Created by MAC03 on 24/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_date: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func select_date(_ sender: UIDatePicker)
    {
        let dt=sender.date
        let dtfrm=DateFormatter()
        //dtfrm.dateFormat="dd/MM/yyyy hh:mm a"
        dtfrm.dateStyle = .short
        txt_date.text=dtfrm.string(from: dt)
    }
    
}

