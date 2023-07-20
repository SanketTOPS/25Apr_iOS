//
//  ViewController.swift
//  Demo_tableview
//
//  Created by MAC03 on 15/07/23.
//

import UIKit

class ViewController: UIViewController {

    var city=[""]
    var subtit=[""]
    var img=[UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        city=["Ahmedabad","Rajkot","Baroda","Junagadh","Morbi","Jamnagar"]
        subtit=["Gujarat","Goa","Maharashtra","Delhi","Punjab","Kolkata"]
        img=[#imageLiteral(resourceName: "07"),#imageLiteral(resourceName: "04"),#imageLiteral(resourceName: "03"),#imageLiteral(resourceName: "09"),#imageLiteral(resourceName: "10"),#imageLiteral(resourceName: "08")]
    }

}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        if section==0
        {
            return "      "
        }
        else if section==1
        {
            return "        "
        }
        return "      "
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
    {
        if section==0
        {
            return "        "
        }
        else if section==1
        {
            return "        "
        }
        return "          "
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return city.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell=UITableViewCell(style:.subtitle, reuseIdentifier: nil)
        if indexPath.section==0
        {
            cell.textLabel?.textColor = .red
            cell.textLabel?.text=city[indexPath.row]
            cell.detailTextLabel?.text=subtit[indexPath.row]
            cell.imageView?.image=img[indexPath.row]
            cell.accessoryType = .detailButton
        }
        else if indexPath.section==1
        {
            cell.textLabel?.textColor = .red
            cell.textLabel?.text=city[indexPath.row]
            cell.imageView?.image=img[indexPath.row]
        }
        else if indexPath.section==2
        {
            cell.textLabel?.textColor = .red
            cell.textLabel?.text=city[indexPath.row]
            cell.accessoryType = .checkmark
        }
        //cell.backgroundColor = .brown
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
    {
        let alert=UIAlertController(title:city[indexPath.row], message:subtit[indexPath.row], preferredStyle: .alert)
        let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
        let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(more)
        present(alert, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if indexPath.section==0
        {
            let secondVC=storyboard?.instantiateViewController(identifier: "secondVC") as! SecondViewController
            secondVC.str_img=img[indexPath.row]
            secondVC.str_city=city[indexPath.row]
            secondVC.str_state=subtit[indexPath.row]
            navigationController?.pushViewController(secondVC, animated: true)
        }
        else if indexPath.section==1
        {
            let secondVC=storyboard?.instantiateViewController(identifier: "secondVC") as! SecondViewController
            secondVC.str_img=img[indexPath.row]
            secondVC.str_city=city[indexPath.row]
            navigationController?.pushViewController(secondVC, animated: true)
        }
        else
        {
            let secondVC=storyboard?.instantiateViewController(identifier: "secondVC") as! SecondViewController
            secondVC.str_city=city[indexPath.row]
            navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == .delete
        {
            city.remove(at: indexPath.row)
            subtit.remove(at: indexPath.row)
            img.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?
    {
        let btn1=UITableViewRowAction(style: .default, title: "Add") { (btnadd, indexpath) in
            print("Add button")
        }
        btn1.backgroundColor = .orange
        let btn2=UITableViewRowAction(style:.normal, title: "Update") { (btnadd, indexpath) in
            print("Update button")
        }
        let btn3=UITableViewRowAction(style: .destructive, title: "Delete") { (btnadd, indexpath) in
            print("Delete button")
            self.city.remove(at: indexPath.row)
            self.subtit.remove(at: indexPath.row)
            self.img.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        return [btn1,btn2,btn3]
    }
}
