//
//  ViewController.swift
//  NavbarApp
//
//  Created by MAC03 on 29/07/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func bar1(_ sender: Any)
    {
        let alert=UIAlertController(title: "Welcome", message: "This is Navbar", preferredStyle: .alert)
        let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
        let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(more)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func bar2(_ sender: Any)
    {
        let photo=UIImagePickerController()
        present(photo, animated: true, completion: nil)
    }
}

