//
//  SecondViewController.swift
//  Demo_tableview
//
//  Created by MAC03 on 15/07/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myimg: UIImageView!
    @IBOutlet weak var lbl_city: UILabel!
    @IBOutlet weak var lbl_state: UILabel!
    
    var str_img=UIImage()
    var str_city=""
    var str_state=""
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl_city.text=str_city
        lbl_state.text=str_state
        myimg.image=str_img
    }
    


}
