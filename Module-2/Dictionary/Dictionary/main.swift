//
//  main.swift
//  Dictionary
//
//  Created by MAC03 on 23/05/23.
//

import Foundation

//var stdata=["id":101,"name":"sanket","sub":"python"] as [String : Any]

//var stdata=Dictionary<String,Any>()

//var stdata:[String:Any]=[:]

/*var stdata:[String:Any]=[:]
stdata=["id":101,"name":"sanket","sub":"python"]
print(stdata)*/

var stdata:[String:Any]=["id":101,"name":"sanket","sub":"python"]
print(stdata)
/*print(stdata["name"]!)
print(stdata.keys)
print(stdata.values)
print(stdata.count)*/

/*for i in stdata
{
    print(i)
}*/

/*for i in stdata.values
{
    print(i)
}
*/
stdata["city"]="rajkot"
stdata["id"]=102
//stdata.removeAll()
stdata.removeValue(forKey: "sub")
print(stdata)



