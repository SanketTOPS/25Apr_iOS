//
//  SecondViewController.swift
//  ScreenNavigation
//
//  Created by MAC03 on 29/06/23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func btn_home(_ sender: Any)
    {
        //navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewController(animated: true)
        
        dismiss(animated: true, completion: nil)
    }
}
