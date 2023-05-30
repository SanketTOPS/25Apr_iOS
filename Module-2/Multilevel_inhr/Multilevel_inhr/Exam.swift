//
//  Exam.swift
//  Multilevel_inhr
//
//  Created by MAC03 on 30/05/23.
//

import Cocoa

class Exam: Student
{
    var s1=0,s2=0,s3=0,s4=0
    
    func getmarks()
    {
        print("Enter Subject1 Mark:")
        s1=Int(readLine()!)!
        print("Enter Subject2 Mark:")
        s2=Int(readLine()!)!
        print("Enter Subject3 Mark:")
        s3=Int(readLine()!)!
        print("Enter Subject4 Mark:")
        s4=Int(readLine()!)!
        
    }

}
