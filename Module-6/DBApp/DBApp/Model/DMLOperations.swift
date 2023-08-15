//
//  DMLOperations.swift
//  DBApp
//
//  Created by MAC03 on 10/08/23.
//

import Foundation
import SQLite3

class DMLOperations
{
    var strpath=""
    func dmlservices(query:String)->Bool
    {
        let path=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        strpath=path+"/demodb.db"
        
        var statement:OpaquePointer?=nil
        var result=false
        if sqlite3_open(strpath, &statement)==SQLITE_OK
        {
            if sqlite3_prepare_v2(statement, query, -1, &statement, nil)==SQLITE_OK
            {
                result=true
                sqlite3_step(statement)
            }
            sqlite3_finalize(statement)
            sqlite3_close(statement)
        }
        return result
    }
}
