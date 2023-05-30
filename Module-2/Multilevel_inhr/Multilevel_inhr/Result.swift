//
//  Result.swift
//  Multilevel_inhr
//
//  Created by MAC03 on 30/05/23.
//

import Cocoa

class Result:Exam
{
    var total=0,pr=0.0
    func finalresult()
    {
        print("ID:",stid)
        print("Name:",stnm)
        print("---------------")
        print("Subject1:",s1)
        print("Subject2:",s2)
        print("Subject3:",s3)
        print("Subject4:",s4)
        total=s1+s2+s3+s4
        print("Total:",total)
        pr=Double(total/4)
        print("PR:",pr)
    }
}
