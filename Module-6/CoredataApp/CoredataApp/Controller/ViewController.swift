//
//  ViewController.swift
//  CoredataApp
//
//  Created by MAC03 on 29/08/23.
//

import UIKit

class ViewController: UIViewController {

    let context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBOutlet weak var txt_name: UITextField!
    @IBOutlet weak var txt_subject: UITextField!
    @IBOutlet weak var txt_city: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let path=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        print(path)
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_showdata(_ sender: Any)
    {
        let dataVC=storyboard?.instantiateViewController(identifier: "dataVC") as! DataViewController
        present(dataVC, animated: true, completion: nil)
    }
    
    @IBAction func btn_save(_ sender: Any)
    {
        insertrecord()
    }
    
    func insertrecord()
    {
        let stdata=["name":txt_name.text!,
                    "sub":txt_subject.text!,
                    "city":txt_city.text!]
        
        let dml=DMLModel()
        dml.savestudinfo(data: stdata)
        try? context.save()
        
        let alert=UIAlertController(title: "Success", message: "Your data has been saved!", preferredStyle: .alert)
        let ok=UIAlertAction(title: "OK", style: .default, handler:{ACTION in
            
            self.txt_name.text=""
            self.txt_subject.text=""
            self.txt_city.text=""
        })
        let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(more)
        present(alert, animated: true, completion: nil)
        
    }
    
}

