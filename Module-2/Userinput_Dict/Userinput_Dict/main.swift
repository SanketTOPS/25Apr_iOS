//
//  main.swift
//  Userinput_Dict
//
//  Created by MAC03 on 23/05/23.
//

import Foundation

var dict=Dictionary<String,Any>()

print("Enter number of pairs:")
var n=Int(readLine()!)!

for i in 0..<n
{
    print("Enter your Key's:")
    var k=readLine()!
    print("Enter your Value's:")
    var v=readLine()!
    
    dict[k]=v
}

print(dict)


