//
//  ViewController.swift
//  TableviewApp
//
//  Created by MAC03 on 11/07/23.
//

import UIKit

class ViewController: UIViewController {

    var data=[""]
    var subtitle=[""]
    var img=[UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        data=["iOS","Android","Python","JAVA","PHP",".NET","C++","Angular","React"]
        subtitle=["Apple Inc","Google Inc","Powerfull Technology","Secure Language","Open source","MIcrosoft Corp.","Old OOP","Google Framework","Facebook Framework"]
        img=[#imageLiteral(resourceName: "02"),#imageLiteral(resourceName: "09"),#imageLiteral(resourceName: "10"),#imageLiteral(resourceName: "04"),#imageLiteral(resourceName: "03"),#imageLiteral(resourceName: "05"),#imageLiteral(resourceName: "07"),#imageLiteral(resourceName: "08"),#imageLiteral(resourceName: "01")]
    }

}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell(style:.subtitle, reuseIdentifier: nil)
        cell.textLabel?.text=data[indexPath.row]
        cell.textLabel?.textColor = .red
        cell.detailTextLabel?.text=subtitle[indexPath.row]
        cell.imageView?.image=img[indexPath.row]
        cell.accessoryType = .detailButton
        return cell
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
    {
        let alert=UIAlertController(title:data[indexPath.row], message:subtitle[indexPath.row], preferredStyle: .alert)
        let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
        let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(more)
        present(alert, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let secondVC=storyboard?.instantiateViewController(identifier: "secondVC") as! SecondViewController
        secondVC.str_title=data[indexPath.row]
        secondVC.str_subtitle=subtitle[indexPath.row]
        secondVC.str_img=img[indexPath.row]
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
}
