//
//  ViewController.swift
//  CustomCell
//
//  Created by MAC03 on 20/07/23.
//

import UIKit

class ViewController: UIViewController {

    var lblData=[""]
    var imgData=[UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblData=["Python","iOS","Android","JAVA","PHP","Angular","React","C++",".NET","UI-UX"]
        imgData=[#imageLiteral(resourceName: "08"),#imageLiteral(resourceName: "04"),#imageLiteral(resourceName: "02"),#imageLiteral(resourceName: "10"),#imageLiteral(resourceName: "07"),#imageLiteral(resourceName: "06"),#imageLiteral(resourceName: "03"),#imageLiteral(resourceName: "01"),#imageLiteral(resourceName: "09"),#imageLiteral(resourceName: "05")]
    }
}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lblData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell=TableViewCell()
        cell=tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_cell.text=lblData[indexPath.row]
        cell.img_cell.image=imgData[indexPath.row]
        cell.btn_cell.addTarget(self, action: #selector(ViewController.btnClick), for: .touchUpInside)
        return cell
    }
    
    @objc func btnClick()
    {
        let alert=UIAlertController(title: "Custom Cell", message: "This is Custom Cell!", preferredStyle: .alert)
        let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
        let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(more)
        present(alert, animated: true, completion: nil)
    }
    
    
}

