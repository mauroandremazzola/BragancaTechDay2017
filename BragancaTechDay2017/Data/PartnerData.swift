//
//  PartnerData.swift
//  BragancaTechDay2017
//
//  Created by Mauro André Barros Mazzola on 17/05/17.
//  Copyright © 2017 Mauro André Barros Mazzola. All rights reserved.
//

import UIKit

class PartnerData: NSObject {
    
    class func getPartners() -> [Partner] {
        var partners = [Partner]()
        partners.append(Partner(name: "its4", site: URL(string: "http://www.its4.com"), image: "logo_its4"))
        partners.append(Partner(name: "Fatec", site: URL(string: "https://www.vestibularfatec.com.br/home"), image: "logo_fatec"))
        partners.append(Partner(name: "Casa do Código", site: URL(string: "https://www.casadocodigo.com.br"), image: "casa-do-codigo"))
        partners.append(Partner(name: "Jet Brains", site: URL(string: "https://www.jetbrains.com"), image: "logo-jet-brains"))
        
        partners.append(Partner(name: "tmax", site: URL(string: "http://www.tmax.com.br/"), image: "logo-tmax"))
       
        partners.append(Partner(name: "maquinaderesultados", site: URL(string: "http://www.maquinaderesultados.com.br/"), image: "logo-maquinaderesultados"))
        
        return partners
    }

}
