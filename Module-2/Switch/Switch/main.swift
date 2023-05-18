//
//  main.swift
//  Switch
//
//  Created by MAC03 on 16/05/23.
//

import Foundation

var no1:Int?,no2:Int?,choice:Int?

print("Enter Number1:")
no1=Int(readLine()!)

print("Enter Number2:")
no2=Int(readLine()!)

print("Enter your choice:")
choice=Int(readLine()!)

switch choice
{
    case 1:
    print("Sum:\(no1! + no2!)")
    
    case 2:
    print("Sub:\(no1!-no2!)")
        
    case 3:
    print("Mul:\(no1!*no2!)")
        
    case 4:
    print("Div:\(no1!/no2!)")
    
    default:
    print("Wrong choice...try again!")
}

