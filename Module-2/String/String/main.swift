//
//  main.swift
//  String
//
//  Created by MAC03 on 18/05/23.
//

import Foundation

/*var str="This is SWIFT"

str.append("#")
str.append(" @ TOPS")
str.insert("*", at: str.index(str.startIndex, offsetBy: 5))
//str.insert(contentsOf: "Hello", at: str.index(str.startIndex, offsetBy: 0))
//str.removeAll()
//str.remove(at:str.index(str.startIndex, offsetBy: 0))
//str.removeFirst()
//str.removeLast()
//str.removeFirst(4)
//str.removeLast(3)
//print(str.count)
print(str)
*/

// ------------------------------------- //

//let username="admin",password="admi"

var username:String?, password:String?
print("Enter username:")
username=readLine()
print("Enter password:")
password=readLine()


if username=="admin" && password=="admin"
{
    print("Login successfully!")
}
else
{
    print("Error!Try again")
}


