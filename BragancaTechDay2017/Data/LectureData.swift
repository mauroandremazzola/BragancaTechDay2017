//
//  LectureData.swift
//  BragancaTechDay2017
//
//  Created by Mauro André Barros Mazzola on 17/05/17.
//  Copyright © 2017 Mauro André Barros Mazzola. All rights reserved.
//

import UIKit

class LectureData: NSObject {
    
    class func getLectures() -> [Lecture] {
        var lectures = [Lecture]()
        //  lectures.append(Lecture(speaker: PersonData.getByName(name: "Alan"), title: "Node JS", hour: "13:30h"))
        lectures.append(Lecture(speaker: PersonData.getByName(name: "Ândriu Felipe Coelho"), title: "Desenvovimento iOS", hour: "11:30h"))
        
        lectures.append(Lecture(speaker: PersonData.getByName(name: "Djonatas Tenfen"), title: "Internet of things", hour: "14:20h"))
        
        lectures.append(Lecture(speaker: PersonData.getByName(name: "Fernanda Saraiva"), title: "Microsoft e comunidade", hour: "9:00h"))
        
        lectures.append(Lecture(speaker: PersonData.getByName(name: "Henrique Rusca"), title: "O que a faculdade não te ensina", hour: "15:10h"))
        
        lectures.append(Lecture(speaker: PersonData.getByName(name: "Milton Carvalhaes Filho"), title: "NET core | APS.NET core", hour: "10:40h"))
        
        lectures.append(Lecture(speaker: PersonData.getByName(name: "Marcelo Antonio Maria Junior"), title: "Dev games", hour: "14:20h"))
        
        lectures.append(Lecture(speaker: PersonData.getByName(name: "Mauro André B. Mazzola"), title: "Android", hour: "13:30h"))
        
        lectures.append(Lecture(speaker: PersonData.getByName(name: "Rafael Assis"), title: "Nativo ao xamarim", hour: "10:40h"))
        
        lectures.append(Lecture(speaker: PersonData.getByName(name: "Thiago Zavaschi"), title: "Banco de dados", hour: "11:30h"))
        
        lectures.append(Lecture(speaker: PersonData.getByName(name: "Vitor A. Vale"), title: "Dev web", hour: "15:10h"))
        
        lectures.sort { $0.speaker.name < $1.speaker.name }
        
        return lectures
    }
    
}
