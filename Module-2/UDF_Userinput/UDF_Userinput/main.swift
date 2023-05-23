//
//  main.swift
//  UDF_Userinput
//
//  Created by MAC03 on 23/05/23.
//

import Foundation

func getdata(id:Int,name:String)
{
    print("ID:",id)
    print("Name:",name)
}

var stid=0
var stnm=""
print("Enter number of Students:")
var n=Int(readLine()!)!

for i in 0..<n
{
    print("Enter ID:")
    stid=Int(readLine()!)!
    print("Enter Name:")
    stnm=readLine()!
    getdata(id: stid, name: stnm)
}

