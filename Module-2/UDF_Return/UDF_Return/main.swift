//
//  main.swift
//  UDF_Return
//
//  Created by MAC03 on 23/05/23.
//

import Foundation

func getsum(a:Int,b:Int)->Int
{
    return a+b
    print("Hello")
}

func answer()
{
    var x=getsum(a: 23, b: 90)
    print(x)
}

func getdata(id:Int,name:String)->Array<Any>
{
    return [id,name]
}

var dt=getdata(id: 101, name: "Sanket")
print(dt)


answer()
