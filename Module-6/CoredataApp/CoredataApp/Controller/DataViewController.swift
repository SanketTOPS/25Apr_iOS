//
//  DataViewController.swift
//  CoredataApp
//
//  Created by MAC03 on 01/09/23.
//

import UIKit

class DataViewController: UIViewController {

    var stdata=[Studinfo]()
    override func viewDidLoad() {
        super.viewDidLoad()

        fetchalldata()
    }
    
    func fetchalldata()
    {
        let dml=DMLModel()
        stdata=dml.showalldata()
    }
}
extension DataViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell(style:.value1, reuseIdentifier: nil)
        cell.textLabel?.text=stdata[indexPath.row].name
        cell.detailTextLabel?.text=stdata[indexPath.row].sub
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == .delete
        {
            let dml=DMLModel()
            stdata=dml.deletedata(index: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        
    }
    
}
