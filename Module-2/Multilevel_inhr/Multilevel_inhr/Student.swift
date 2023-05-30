//
//  Student.swift
//  Multilevel_inhr
//
//  Created by MAC03 on 30/05/23.
//

import Cocoa

class Student: NSObject {

    var stid=0
    var stnm=""
    
    func getdata()
    {
        print("Enter ID:")
        stid=Int(readLine()!)!
        print("enter Name:")
        stnm=readLine()!
    }
    
}
