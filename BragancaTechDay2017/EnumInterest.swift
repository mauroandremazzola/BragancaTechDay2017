//
//  EnumInterest.swift
//  BragancaTechDay2017
//
//  Created by Mauro André Barros Mazzola on 05/04/17.
//  Copyright © 2017 Mauro André Barros Mazzola. All rights reserved.
//

import Foundation

enum Interest : Int {
    case iOS = 1,
    android = 2,
    desenvolvimentoHibrido = 3,
    bancoDeDados = 4,
    ioT  = 5,
    webServices = 6
    
    var description : String {
        get {
            switch self {
            case .iOS: return "iOS"
            case .android: return "Android"
            case .desenvolvimentoHibrido: return "Desenvolvimento Híbrido"
            case .bancoDeDados: return "Banco de dados"
            case .ioT: return "IoT - Internet of Things"
            case .webServices: return "Web Services"
            }
        }
    }

    static var getAll : [Interest] {
        get {
            return [.iOS, .android, .desenvolvimentoHibrido, .bancoDeDados, .ioT, .webServices]
        }
    }
}
