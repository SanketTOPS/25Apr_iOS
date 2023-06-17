//
//  ViewController.swift
//  Alert-Actionsheet
//
//  Created by MAC03 on 17/06/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_alert(_ sender: Any)
    {
        let error=UIAlertController(title: "Error", message: "Something went wrong...😕", preferredStyle: .alert)
        let more=UIAlertAction(title: "MORE", style: .destructive, handler:{ACTION in
            
            self.view.backgroundColor=UIColor.orange
        })
        //let can=UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let ok=UIAlertAction(title: "OK", style:.default, handler: nil)
        error.addAction(more)
        //error.addAction(can)
        error.addAction(ok)
        present(error, animated: true, completion: nil)
    }
    
    @IBAction func btn_actionsheet(_ sender: Any)
    {
        let payment=UIAlertController(title: "Payment", message: "Select any one option for payment...💲", preferredStyle: .actionSheet)
        
        let btn1=UIAlertAction(title: "Debit Card", style: .default, handler: nil)
        let btn2=UIAlertAction(title: "Credit Card", style: .default, handler: nil)
        let btn3=UIAlertAction(title: "UPI", style:.destructive, handler: nil)
        let btn4=UIAlertAction(title: "Cancel Payment", style:.cancel, handler:{ACTION in
            
            let alert=UIAlertController(title: "Cancel", message: "Your payment is cancelled!", preferredStyle: .alert)
            let ok=UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
        })
        payment.addAction(btn1)
        payment.addAction(btn2)
        payment.addAction(btn3)
        payment.addAction(btn4)
        present(payment, animated: true, completion: nil)
    }
    
}

