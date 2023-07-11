//
//  SecondViewController.swift
//  TableviewApp
//
//  Created by MAC03 on 11/07/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myimg: UIImageView!
    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_subtitle: UILabel!
    
    var str_img=UIImage()
    var str_title=""
    var str_subtitle=""
    override func viewDidLoad() {
        super.viewDidLoad()

       
        myimg.image=str_img
        lbl_title.text=str_title
        lbl_subtitle.text=str_subtitle
    }
    


}
