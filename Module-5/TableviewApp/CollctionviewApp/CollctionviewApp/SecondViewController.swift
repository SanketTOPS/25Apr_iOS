//
//  SecondViewController.swift
//  CollctionviewApp
//
//  Created by MAC03 on 27/07/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var second_img: UIImageView!
    @IBOutlet weak var second_lbl: UILabel!
    
    var m_img=UIImage()
    var m_lbl=""
    override func viewDidLoad() {
        super.viewDidLoad()

        second_lbl.text=m_lbl
        second_img.image=m_img
    }
    


}
