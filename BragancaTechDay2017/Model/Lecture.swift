//
//  Lecture.swift
//  BragancaTechDay2017
//
//  Created by Mauro André Barros Mazzola on 17/05/17.
//  Copyright © 2017 Mauro André Barros Mazzola. All rights reserved.
//

import UIKit

struct Lecture {

    var speaker : Person
    var title : String
    var hour : String
    
    init(speaker:Person, title:String, hour:String) {
        self.speaker = speaker
        self.title = title
        self.hour = hour
    }
}
