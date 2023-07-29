//
//  ViewController.swift
//  ToolbarApp
//
//  Created by MAC03 on 29/07/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  
    @IBAction func btn1(_ sender: Any)
    {
        view.backgroundColor=UIColor.green
    }
    
    @IBAction func btn2(_ sender: Any)
    {
        view.backgroundColor=UIColor.blue
    }
    
    @IBAction func btn4(_ sender: Any)
    {
        view.backgroundColor=UIColor.red
    }
    
    @IBAction func btn3(_ sender: Any)
    {
        view.backgroundColor=UIColor.yellow
    }
}

