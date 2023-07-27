//
//  ViewController.swift
//  CustomCellwithXIB
//
//  Created by MAC03 on 25/07/23.
//

import UIKit

class ViewController: UIViewController {

    var lblArray=[""]
    var imgArray=[UIImage]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 300
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        lblArray=["UITableViewCell as the root of your xib file and any other visual.","Android Inc","Microsoft Corporation","TOPS Technologies","Marwadi University","Now you may link the reference from xib to YourCustomCell Swift and work like a charm.","RKU"]
        imgArray=[#imageLiteral(resourceName: "06"),#imageLiteral(resourceName: "08"),#imageLiteral(resourceName: "09"),#imageLiteral(resourceName: "10"),#imageLiteral(resourceName: "04"),#imageLiteral(resourceName: "09"),#imageLiteral(resourceName: "01")]
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lblArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell=TableViewCell()
        cell=tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_cell.text=lblArray[indexPath.row]
        cell.img_cell.image=imgArray[indexPath.row]
        return cell
    }
    
   
    
}
