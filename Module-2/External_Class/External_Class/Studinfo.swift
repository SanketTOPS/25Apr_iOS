//
//  Studinfo.swift
//  External_Class
//
//  Created by MAC03 on 25/05/23.
//

import Cocoa

//External Class
class Studinfo
{
    var stid=0
    var stnm=""
    
    func getdata()
    {
        print("Enter ID:")
        stid=Int(readLine()!)!
        print("Enter Name:")
        stnm=readLine()!
    }
    
    func printdata()
    {
        print("ID:",stid)
        print("Name:",stnm)
    }

}

