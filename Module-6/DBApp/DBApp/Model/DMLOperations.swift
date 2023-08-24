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
    
    
    func fetchuser(query:String) -> Array<Any>
    {
        let path=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        strpath=path+"/demodb.db"
        
        var statement:OpaquePointer?=nil
        
        var data=Array<Any>()
        if sqlite3_open(strpath, &statement)==SQLITE_OK
        {
            if sqlite3_prepare_v2(statement, query, -1, &statement, nil)==SQLITE_OK
            {
                while sqlite3_step(statement)==SQLITE_ROW
                {
                    let unm=String(cString: sqlite3_column_text(statement, 3))
                    let pas=String(cString: sqlite3_column_text(statement, 4))
                    data.append(unm)
                    data.append(pas)
                }
            }
            sqlite3_finalize(statement)
            sqlite3_close(statement)
        }
        return data
    }
    
    func fetchalldata(query:String)-> Array<Any>
    {
        let path=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        strpath=path+"/demodb.db"
        
        var statement:OpaquePointer?=nil
        
        var data=Array<Any>()
        var dict=Dictionary<String,Any>()
        if sqlite3_open(strpath, &statement)==SQLITE_OK
        {
            if sqlite3_prepare_v2(statement, query, -1, &statement, nil)==SQLITE_OK
            {
                while sqlite3_step(statement)==SQLITE_ROW
                {
                    let fnm=String(cString: sqlite3_column_text(statement, 1))
                    let sub=String(cString: sqlite3_column_text(statement, 2))
                    let city=String(cString: sqlite3_column_text(statement, 3))
                    
                    dict["fullname"]=fnm
                    dict["sub"]=sub
                    dict["city"]=city
                    
                    data.append(dict)
                    
                }
            }
            sqlite3_finalize(statement)
            sqlite3_close(statement)
        }
        return data
    }
}
