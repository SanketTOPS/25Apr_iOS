//
//  ViewController.swift
//  XIBTable
//
//  Created by MAC03 on 27/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var title_array=[""]
    var subtit_array=[""]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        title_array=["iPhone","Android","HP","Lenovo","Samsung","Vivo"]
        subtit_array=["Two great sizes. Now with a splash of yellow. Buy in yellow now. Pro-level camera. Whoa-level pics. 6 colours. iOS 16. Accessibility features.","Explore Android's mobile operating system and search for secure and custom phones that can be tailored to your needs using the latest Google features.","Laptop Series","Precision Engineering for Seamless Performance and Unmatched Reliability! Advanced Security Features for Peace of Mind and Unmatched Performance!","Indian Mobile Brand","vivo is a global leader in innovative smartphones and accessories. The smart future is already here with the vivo X80 Series✓."]
    }
}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return title_array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        var cell=TableViewCell()
        cell=tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_title.text=title_array[indexPath.row]
        cell.lbl_subtitle.text=subtit_array[indexPath.row]
        return cell
    }
    
    
}

