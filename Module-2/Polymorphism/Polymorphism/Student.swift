//
//  Student.swift
//  Polymorphism
//
//  Created by MAC03 on 30/05/23.
//

import Cocoa


class Student: NSObject {

    //Method Overloading
    
    func getdata(id:Int,name:String)
    {
        print("ID:",id)
        print("Name:",name)
    }
    
    func getdata(sub:String)
    {
        print("Subject:",sub)
    }
    
}
