//
//  DMLModel.swift
//  CoredataApp
//
//  Created by MAC03 on 29/08/23.
//

import UIKit
import CoreData

class DMLModel
{
    let context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func savestudinfo(data:[String:Any])
    {
        let savedata=NSEntityDescription.insertNewObject(forEntityName: "Studinfo", into: context) as! Studinfo
        savedata.name=data["name"] as? String
        savedata.sub=data["sub"] as? String
        savedata.city=data["city"] as? String
    }
    
    func showalldata()-> [Studinfo]
    {
        var data=[Studinfo]()
        let req=NSFetchRequest<NSFetchRequestResult>.init(entityName: "Studinfo")
        do
        {
            data=try! context.fetch(req) as! [Studinfo]
        }
        catch
        {
            print(error.localizedDescription)
        }
        return data
    }
    
    func deletedata(index:Int)->[Studinfo]
    {
        var stdata=showalldata()
        context.delete(stdata[index])
        stdata.remove(at: index)
        try? context.save()
        return stdata
    }
}



