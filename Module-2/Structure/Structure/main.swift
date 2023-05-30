//
//  main.swift
//  Structure
//
//  Created by MAC03 on 30/05/23.
//

import Foundation

struct studinfo {
    var id:Int
    var name:String
    var city:String
}


/*var st=studinfo(id: 1, name: "Sanket", city: "Rajkot")
var st1=studinfo(id: 2, name: "Nirav", city: "Baroda")
print(st)
print(st1)*/


// Array of Struture
var stdata=[studinfo]()
/*stdata.append(studinfo(id: 101, name: "sanket", city: "rajkot"))
stdata.append(studinfo(id: 102, name: "nirav", city: "surat"))
stdata.append(studinfo(id: 103, name: "ashok", city: "baroda"))
print(stdata)*/

print("Enter number of students:")
var n=Int(readLine()!)!

for i in 0..<n
{
    print("Enter ID:")
    var stid=Int(readLine()!)!
    print("Enter Name:")
    var stnm=readLine()!
    print("Enter City:")
    var stct=readLine()!
    stdata.append(studinfo(id: stid, name: stnm, city: stct))
}

print(stdata)
