//
//  Person.swift
//  BragancaTechDay2017
//
//  Created by Mauro André Barros Mazzola on 04/04/17.
//  Copyright © 2017 Mauro André Barros Mazzola. All rights reserved.
//

import Foundation

struct Person {
    
    var name : String
    var image : String
    var desc : String
    var bio : URL
    
    init(name:String, desc:String, image:String, bio:URL?) {
        self.name = name
        self.image = image
        self.desc = desc
        self.bio = bio ?? URL(string: "http://www.bragancatechday.com.br")!
    }
    
}
