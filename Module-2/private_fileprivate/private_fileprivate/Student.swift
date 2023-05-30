//
//  Student.swift
//  private_fileprivate
//
//  Created by MAC03 on 30/05/23.
//

import Cocoa

class Student: NSObject {

    internal var stid=0
    internal var stnm=""
    
    func getdata()
    {
        print("Enter ID:")
        stid=Int(readLine()!)!
        print("Enter Name:")
        stnm=readLine()!
    }

}

