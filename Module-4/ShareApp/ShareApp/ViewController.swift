//
//  ViewController.swift
//  ShareApp
//
//  Created by MAC03 on 06/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myimg: UIImageView!
    @IBOutlet weak var mytxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    @IBAction func btn_share(_ sender: Any)
    {
        //let share=UIActivityViewController(activityItems: [UIActivity.ActivityType.addToReadingList,UIActivity.ActivityType.postToFacebook], applicationActivities: nil)
        let share=UIActivityViewController(activityItems: [myimg.image,mytxt.text], applicationActivities: nil)
        present(share, animated: true, completion: nil)
    }
}

