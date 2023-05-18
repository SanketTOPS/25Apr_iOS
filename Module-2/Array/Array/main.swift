//
//  main.swift
//  Array
//
//  Created by MAC03 on 18/05/23.
//

import Foundation

//1. //var city=["rajkot","baroda","surat","jamnagar","navsari"] //static

//var city=Array<String>()

//var city=[String]()

//var city:[String]

//var city=[] as! [Any]


// --------------------------------------- //
var city=["rajkot","baroda","surat","jamnagar","navsari"]
//print(city[0])

city.append("junagadh")
city.append(contentsOf: ["morbi","kalawad","wadhwan"])
city.insert("delhi", at: 0)
city.insert(contentsOf: ["mumbai","pune"], at: 2)
//city.removeAll()
//city.removeFirst()
//city.removeFirst(3)
//city.removeLast()
//city.removeLast(3)
//city.remove(at: 4)
//city.reverse()
//city.sort()
//print(city.count)
print(city)



for i in 0..<city.count
{
    //print(i)
    //print(city[i])
    print("\(i)=\(city[i])")
}












