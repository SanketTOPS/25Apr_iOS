//
//  HomeViewController.swift
//  DBApp
//
//  Created by MAC03 on 15/08/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var txt_fullname: UITextField!
    @IBOutlet weak var txt_subject: UITextField!
    @IBOutlet weak var txt_city: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_showdata(_ sender: Any)
    {
        let dataVC=storyboard?.instantiateViewController(identifier: "dataVC") as! DataViewController
        present(dataVC, animated: true, completion: nil)
    }
    
    @IBAction func btn_save(_ sender: Any)
    {
        savestudinfo()
    }
    
    @IBAction func btn_update(_ sender: Any)
    {
        updatestudinfo()
    }
    
    @IBAction func btn_delete(_ sender: Any)
    {
        deletestudinfo()
    }
    
    @IBAction func btn_logout(_ sender: Any)
    {
        UserDefaults.standard.setValue(false, forKey: "is_login")
        dismiss(animated: true, completion: nil)
    }
    
    func updatestudinfo()
    {
        if txt_fullname.text=="" || txt_subject.text=="" || txt_city.text==""
        {
            let alert=UIAlertController(title: "Error", message: "Please input proper details!", preferredStyle: .alert)
            let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
            txt_fullname.layer.borderColor=UIColor.red.cgColor
            txt_fullname.layer.borderWidth=2
            
            txt_subject.layer.borderColor=UIColor.red.cgColor
            txt_subject.layer.borderWidth=2
            
            txt_city.layer.borderColor=UIColor.red.cgColor
            txt_city.layer.borderWidth=2
            
        }
        else
        {
            let newuser_query="update studinfo set sub='\(txt_subject.text!)',city='\(txt_city.text!)' where fullname='\(txt_fullname.text!)'"
            print(newuser_query)
            
            let dml=DMLOperations()
            let status=dml.dmlservices(query: newuser_query)
            
            if status==true
            {
                let alert=UIAlertController(title: "Success", message: "Rescord updated Successfully!", preferredStyle: .alert)
                let ok=UIAlertAction(title: "OK", style: .default, handler: {ACTION in
                    
                    self.txt_fullname.text=""
                    self.txt_subject.text=""
                    self.txt_city.text=""
                })
                alert.addAction(ok)
                present(alert, animated: true, completion: nil)
            }
            else
            {
                let alert=UIAlertController(title: "Error", message: "Something went wrong...Try again!😟", preferredStyle: .alert)
                let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
                let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
                alert.addAction(ok)
                alert.addAction(more)
                present(alert, animated: true, completion: nil)
            }
        }
    }
    
    func deletestudinfo()
    {
        if txt_fullname.text==""
        {
            let alert=UIAlertController(title: "Error", message: "Please input proper details!", preferredStyle: .alert)
            let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
            txt_fullname.layer.borderColor=UIColor.red.cgColor
            txt_fullname.layer.borderWidth=2
            
        }
        else
        {
            let newuser_query="delete from studinfo where fullname='\(txt_fullname.text!)'"
            print(newuser_query)
            
            let dml=DMLOperations()
            let status=dml.dmlservices(query: newuser_query)
            
            if status==true
            {
                let alert=UIAlertController(title: "Success", message: "Rescord deleted Successfully!", preferredStyle: .alert)
                let ok=UIAlertAction(title: "OK", style: .default, handler: {ACTION in
                    
                    self.txt_fullname.text=""
                })
                alert.addAction(ok)
                present(alert, animated: true, completion: nil)
            }
            else
            {
                let alert=UIAlertController(title: "Error", message: "Something went wrong...Try again!😟", preferredStyle: .alert)
                let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
                let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
                alert.addAction(ok)
                alert.addAction(more)
                present(alert, animated: true, completion: nil)
            }
        }
    }
    
    func savestudinfo()
    {
        if txt_fullname.text=="" || txt_subject.text=="" || txt_city.text==""
        {
            let alert=UIAlertController(title: "Error", message: "Please input proper details!", preferredStyle: .alert)
            let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
            txt_fullname.layer.borderColor=UIColor.red.cgColor
            txt_fullname.layer.borderWidth=2
            
            txt_subject.layer.borderColor=UIColor.red.cgColor
            txt_subject.layer.borderWidth=2
            
            txt_city.layer.borderColor=UIColor.red.cgColor
            txt_city.layer.borderWidth=2
            
        }
        else
        {
            let newuser_query="insert into studinfo(fullname,sub,city)values('\(txt_fullname.text!)','\(txt_subject.text!)','\(txt_city.text!)')"
            print(newuser_query)
            
            let dml=DMLOperations()
            let status=dml.dmlservices(query: newuser_query)
            
            if status==true
            {
                let alert=UIAlertController(title: "Success", message: "Rescord inserted Successfully!", preferredStyle: .alert)
                let ok=UIAlertAction(title: "OK", style: .default, handler: {ACTION in
                    
                    self.txt_fullname.text=""
                    self.txt_subject.text=""
                    self.txt_city.text=""
                })
                alert.addAction(ok)
                present(alert, animated: true, completion: nil)
            }
            else
            {
                let alert=UIAlertController(title: "Error", message: "Something went wrong...Try again!😟", preferredStyle: .alert)
                let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
                let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
                alert.addAction(ok)
                alert.addAction(more)
                present(alert, animated: true, completion: nil)
            }
        }
    }

}
