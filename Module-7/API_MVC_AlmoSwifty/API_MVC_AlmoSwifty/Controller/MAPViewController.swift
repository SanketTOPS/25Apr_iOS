//
//  MAPViewController.swift
//  API_MVC_AlmoSwifty
//
//  Created by MAC03 on 29/09/23.
//

import UIKit
import WebKit

class MAPViewController: UIViewController {

    @IBOutlet weak var mapView: WKWebView!
    
    var mapURL=""
    override func viewDidLoad() {
        super.viewDidLoad()

        let url=URL(string:mapURL)
        let req=URLRequest(url: url!)
        mapView.load(req)
    }
    


}
