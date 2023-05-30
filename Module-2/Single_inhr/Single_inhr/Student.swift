//
//  Student.swift
//  Single_inhr
//
//  Created by MAC03 on 30/05/23.
//

import Cocoa

class Student: NSObject
{
     var stid=0
     var stnm=""
    
    func getdata()
    {
        print("Enter your ID:")
        stid=Int(readLine()!)!
        print("Enter your Name:")
        stnm=readLine()!
    }

}
