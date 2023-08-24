//
//  DataViewController.swift
//  DBApp
//
//  Created by MAC03 on 24/08/23.
//

import UIKit

class DataViewController: UIViewController {

    var alldata=Array<Any>()
    override func viewDidLoad() {
        super.viewDidLoad()

        allstudentdata()
    }
    

    func allstudentdata()
    {
        let select_query="select * from studinfo"
        print(select_query)
        
        let dml=DMLOperations()
        alldata=dml.fetchalldata(query: select_query)
        print(alldata)
    }

}
extension DataViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alldata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var dict=alldata[indexPath.row] as! Dictionary<String,Any>
        var cell=TableViewCell()
        cell=tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_fullname.text=dict["fullname"] as? String
        cell.lbl_subject.text=dict["sub"] as? String
        cell.lbl_city.text=dict["city"] as? String
        return cell
    }
    
    
}
