//
//  ViewController.swift
//  PickerviewApp
//
//  Created by MAC03 on 20/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_city: UITextField!
    var city=[""]
    var data=[""]
    override func viewDidLoad() {
        super.viewDidLoad()
        city=["Ahmedabad","Rajkot","Surat","Baroda","Junagadh","Jamnagar"]
        data=["iOS","Android","JAVA","PHP","Python"]
    }
}
extension ViewController:UIPickerViewDataSource,UIPickerViewDelegate
{
    //required
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component==0
        {
            return city.count
        }
        return data.count
        
    }
    
    //optional
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component==0
        {
            return city[row]
        }
        return data[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if component==0
        {
            txt_city.text=city[row]
            //txt_city.text="\(city[row])+\(data[row])"
            
            let alert=UIAlertController(title:"City", message:city[row], preferredStyle: .alert)
            let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
            let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
            alert.addAction(ok)
            alert.addAction(more)
            present(alert, animated: true, completion: nil)
        }
        else
        {
            txt_city.text=data[row]
            //txt_city.text="\(city[row])+\(data[row])"
            
            let alert=UIAlertController(title:"Technology", message:data[row], preferredStyle: .alert)
            let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
            let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
            alert.addAction(ok)
            alert.addAction(more)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
}
