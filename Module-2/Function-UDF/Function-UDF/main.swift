//
//  main.swift
//  Function-UDF
//
//  Created by MAC03 on 23/05/23.
//

import Foundation


func myfunc() -> Void
{
    print("This is User define function.")
}

func getsum(a:Int,b:Int)
{
    print("Sum:",a+b)
}

func getdata(id:Int,name:String,city:String)
{
    print("ID:",id)
    print("Name:",name)
    print("City:",city)
}


// Function calling
myfunc()
getsum(a: 78, b: 90) //static
//getdata(id: 101, name: "Sanket", city: "Rajkot") //static

print("Enter ID:")
var stid=Int(readLine()!)!

print("Enter Name:")
var stnm=readLine()!

print("Enter City:")
var stct=readLine()!

getdata(id: stid, name: stnm, city: stct)
