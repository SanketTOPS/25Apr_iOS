//
//  main.swift
//  Userinput Array
//
//  Created by MAC03 on 18/05/23.
//

import Foundation

var data=Array<Any>()

print("Enter number of data:")
var n=Int(readLine()!)!

for i in 0..<n
{
    print("Enter your data:")
    var x=readLine()!
    data.append(x)
}

print(data)
