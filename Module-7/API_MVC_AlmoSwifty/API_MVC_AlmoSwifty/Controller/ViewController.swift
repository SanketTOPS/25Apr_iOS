//
//  ViewController.swift
//  API_MVC_AlmoSwifty
//
//  Created by MAC03 on 29/09/23.
//

import UIKit
import SwiftyJSON
import Kingfisher
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var apiArray=[APIModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        apicalling()
    }
    
    
    func apicalling()
    {
        let url=URL(string: "https://restcountries.com/v3.1/all")
        
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            do
            {
                let json=try JSON(data: data!)
                let finalData=json.arrayObject?.count
                
                for i in 0..<finalData!
                {
                    let name=json[i]["name"]["common"].stringValue
                    let cap=json[i]["capital"][0].stringValue
                    let reg=json[i]["region"].stringValue
                    let lat=json[i]["latlng"][0].doubleValue
                    let lng=json[i]["latlng"][1].doubleValue
                    let map=json[i]["maps"]["googleMaps"].stringValue
                    let flag=json[i]["flags"]["png"].stringValue
                    
                    self.apiArray.append(APIModel(name: name, capital: cap, region: reg, lat: lat, lng: lng, maps: map, flags: flag))
                    
                }
                //print(self.apiArray)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            }
            catch
            {
                print(error.localizedDescription)
            }
            
            
        }.resume()
    }
}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apiArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell=UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text=apiArray[indexPath.row].name
        cell.detailTextLabel?.text=apiArray[indexPath.row].region
        cell.imageView?.kf.setImage(with: URL(string: apiArray[indexPath.row].flags!))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mapVC=storyboard?.instantiateViewController(identifier: "mapVC") as! MAPViewController
        //mapVC.modalPresentationStyle = .fullScreen
        mapVC.mapURL=apiArray[indexPath.row].maps!
        present(mapVC, animated: true, completion: nil)
    }
}

