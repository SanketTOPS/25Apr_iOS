//
//  main.swift
//  Class
//
//  Created by MAC03 on 25/05/23.
//

import Foundation

//Internal Class
class studinfo
{
    var stid=12
    var stnm="Sanket"
    
    func getdata()
    {
        print("ID:",stid)
        print("Name:",stnm)
    }
    
    func getsum(a:Int,b:Int)
    {
        print("Sum:",a+b)
    }
}

var st=studinfo()
st.getdata()
st.getsum(a: 45, b: 89)
