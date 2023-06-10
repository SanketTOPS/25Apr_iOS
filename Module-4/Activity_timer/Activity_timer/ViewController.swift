//
//  ViewController.swift
//  Activity_timer
//
//  Created by MAC03 on 10/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myactivity: UIActivityIndicatorView!
    
    var tm=Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_start(_ sender: Any)
    {
        myactivity.startAnimating()
        tm=Timer.scheduledTimer(timeInterval: 10.0, target: self, selector: #selector(ViewController.stopTimer), userInfo: nil, repeats: false)
    }
    
    @objc func stopTimer()
    {
        //print("Timer start...")
        myactivity.stopAnimating()
        myactivity.hidesWhenStopped=true
    }
    
}

