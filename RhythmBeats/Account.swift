//
//  Account.swift
//  RhythmBeats
//
//  Created by LiJing on 3/12/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import Foundation

var accounts:[String:Account]=[:]

class Account{
    var userName:String
    var password:String
    var score: Int=0
    var level: Int=0
    var songPlayed:[String]=[]
    init(userName: String, password: String){
        self.userName=userName
        self.password=password
    }
}
