//
//  ViewController.swift
//  CommonControlApp
//
//  Created by MAC03 on 08/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    var tm=Timer()
    var n=0
    @IBOutlet weak var lbl_fname: UILabel!
    @IBOutlet weak var lbl_lname: UILabel!
    @IBOutlet weak var myprogress: UIProgressView!
    
    @IBOutlet weak var myactivity: UIActivityIndicatorView!
    @IBOutlet weak var txt_fname: UITextField!
    @IBOutlet weak var txt_lname: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tm=Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.startProgress), userInfo: nil, repeats: true)
        //lbl_fname.alpha=0
        lbl_lname.alpha=0
        txt_fname.alpha=0
        txt_lname.alpha=0
    }
    
    @objc func startProgress()
    {
        n+=1
        if n<=10
        {
            //myprogress.progress=Float(n)/10
            myprogress.setProgress(Float(n)/10, animated: true)
        }
    }

    @IBAction func segment_color(_ sender: UISegmentedControl)
    {
        if sender.selectedSegmentIndex==0
        {
            //view.backgroundColor=UIColor.yellow
            lbl_lname.text=sender.titleForSegment(at: 0)
        }
        else if sender.selectedSegmentIndex==1
        {
            //view.backgroundColor=UIColor.green
            lbl_lname.text=sender.titleForSegment(at: 1)
        }
        else if sender.selectedSegmentIndex==2
        {
            //view.backgroundColor=UIColor.blue
            lbl_lname.text=sender.titleForSegment(at: 2)
        }
        else
        {
            //view.backgroundColor=UIColor.orange
            lbl_lname.text=sender.titleForSegment(at: 3)
        }
    }
    
    @IBAction func btn_submit(_ sender: Any)
    {
        lbl_fname.text=txt_fname.text
        lbl_lname.text=txt_lname.text
        view.endEditing(true)
    }
    
    @IBAction func switch_state(_ sender:UISwitch)
    {
        if sender.isOn
        {
            /*lbl_fname.alpha=1
            lbl_lname.alpha=1
            txt_fname.alpha=1
            txt_lname.alpha=1*/
            myactivity.startAnimating()
        }
        else
        {
            /*lbl_fname.alpha=0
            lbl_lname.alpha=0
            txt_fname.alpha=0
            txt_lname.alpha=0*/
            myactivity.stopAnimating()
        }
    }
    
    @IBAction func stpr_value(_ sender: UIStepper)
    {
        lbl_fname.text=String(sender.value)
        if sender.value>10
        {
            view.backgroundColor = .yellow
        }
        if sender.value>=15
        {
            view.backgroundColor = .orange
        }
    }
    
    @IBAction func slider_value(_ sender: UISlider)
    {
        lbl_fname.text=String(Int(sender.value))
        
        myprogress.progress=sender.value/100
        
        /*if sender.value>20
        {
            view.backgroundColor=UIColor.yellow
        }
        if sender.value>50
        {
            view.backgroundColor=UIColor.orange
        }
        if sender.value>70
        {
            view.backgroundColor=UIColor.red
        }*/
    }
}

