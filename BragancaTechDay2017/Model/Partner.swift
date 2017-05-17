//
//  Partner.swift
//  BragancaTechDay2017
//
//  Created by Mauro André Barros Mazzola on 04/04/17.
//  Copyright © 2017 Mauro André Barros Mazzola. All rights reserved.
//

import Foundation

struct Partner {
    
    var name : String
    var site : URL
    var image : String
    
    init(name:String, site:URL?, image:String) {
        self.name = name
        self.site = site ?? URL(string: "http://www.bragancatechday.com.br")!
        self.image = image
    }
    
}
