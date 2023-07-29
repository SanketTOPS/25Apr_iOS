//
//  ViewController.swift
//  Custom Navbar
//
//  Created by MAC03 on 29/07/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_add(_ sender: Any)
    {
        let alert=UIAlertController(title: "Create Folder", message: "Your Folder Name", preferredStyle: .alert)
        alert.addTextField { (txt) in
            
        }
        let ok=UIAlertAction(title: "Cancel", style: .default, handler: nil)
        let more=UIAlertAction(title: "Create", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(more)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func btn_plus(_ sender: Any)
    {
        let alert=UIAlertController(title: "Coin", message: "Add Coins", preferredStyle:.actionSheet)
        let btn1=UIAlertAction(title: "100+", style: .default, handler: nil)
        let btn2=UIAlertAction(title: "1000+", style: .destructive, handler: nil)
        let btn3=UIAlertAction(title: "2000+", style: .destructive, handler: nil)
        let btn4=UIAlertAction(title: "3000+", style: .destructive, handler: nil)
        alert.addAction(btn1)
        alert.addAction(btn2)
        alert.addAction(btn3)
        alert.addAction(btn4)
        present(alert, animated: true, completion: nil)
    }
}

