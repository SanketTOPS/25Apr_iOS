//
//  main.swift
//  Set
//
//  Created by MAC03 on 18/05/23.
//

import Foundation

var alpha:Set=["A","B","C","D","E","F","A","B"]
alpha.insert("G")
//alpha.remove("C")
//alpha.removeAll()
//alpha.removeFirst()
//print(alpha.count)
//print(alpha)

/*for i in 0..<alpha.count
{
    print(i)
}*/


var newset:Set=["P","Q","R","S","T","U","A","B"]

//let x=alpha.union(newset)
let x=alpha.intersection(newset)
print(x)
