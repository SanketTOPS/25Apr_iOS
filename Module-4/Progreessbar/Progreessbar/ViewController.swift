//
//  ViewController.swift
//  Progreessbar
//
//  Created by MAC03 on 17/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myprogress: UIProgressView!
    @IBOutlet weak var lbl_value: UILabel!
    
    var tm=Timer()
    var n=0
    override func viewDidLoad() {
        super.viewDidLoad()
        tm=Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.starttimer), userInfo: nil, repeats:true)
    }
    @objc func starttimer()
    {
        n+=1
        if n<=10
        {
            //myprogress.progress=Float(n)/10
            myprogress.setProgress(Float(n)/10, animated: true)
        }
    }

    @IBAction func slider_value(_ sender: UISlider)
    {
        lbl_value.text=String(sender.value)
        myprogress.progress=sender.value
    }
    
}

