//
//  Music.swift
//  RhythmBeats
//
//  Created by LiJing on 3/13/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import Foundation

let musics=[
    Music(name:"ThinkingOutLoud", category:"Simple"),
    Music(name:"CountingStars", category:"Median"),
    Music(name:"StressedOut", category:"Hard")
]

class Music {
    var name:String
    var category:String
    init(name:String, category:String){
        self.name=name
        self.category=category
    }
}
