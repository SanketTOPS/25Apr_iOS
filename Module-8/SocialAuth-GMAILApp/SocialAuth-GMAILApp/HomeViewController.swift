//
//  HomeViewController.swift
//  SocialAuth-GMAILApp
//
//  Created by MAC03 on 06/10/23.
//

import UIKit
import GoogleSignIn

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_logout(_ sender: Any)
    {
        GIDSignIn.sharedInstance.signOut()
        dismiss(animated: true, completion: nil)
    }
    
    

}
