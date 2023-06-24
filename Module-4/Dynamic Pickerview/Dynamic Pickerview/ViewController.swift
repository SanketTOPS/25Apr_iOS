//
//  ViewController.swift
//  Dynamic Pickerview
//
//  Created by MAC03 on 24/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_city: UITextField!
    
    let pkrview=UIPickerView()
    
    var city=[""]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        city=["Rajkot","Ahmedabad","Baroda","Surat","Navsari"]
        
        txt_city.inputView=pkrview
        
        pkrview.dataSource=self
        pkrview.delegate=self
    }
    
}
extension ViewController:UIPickerViewDataSource,UIPickerViewDelegate
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return city.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return city[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txt_city.text=city[row]
        view.endEditing(true)
    }
}

