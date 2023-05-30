//
//  Screen2.swift
//  Overriding
//
//  Created by MAC03 on 30/05/23.
//

import Cocoa

class Screen2: Scrren1
{
    override func userLogin(username: String, password: String)
    {
        print("Username:",username)
        print("Password:",password)
    }

}
