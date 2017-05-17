//
//  PersonData.swift
//  BragancaTechDay2017
//
//  Created by Mauro André Barros Mazzola on 17/05/17.
//  Copyright © 2017 Mauro André Barros Mazzola. All rights reserved.
//

import UIKit

class PersonData: NSObject {

    class func getSpekears() -> [Person] {
        var speakers = [Person]()
        
        speakers.append(Person(name: "Djonatas Tenfen", desc: "Ampla experiência em desenvolvimento de software com ênfase em integrações web-service REST.", image: "DJ", bio:URL(string:"https://www.linkedin.com/in/djonatas/")))
        
        speakers.append(Person(name: "Rafael Assis", desc: "Desenvolvedor mobile com ampla experiência em iOS. Atualmente descobrindo novos horizontes em desenvolvimento híbrido com microsoft Xamarin.", image: "rafael", bio:URL(string:"https://www.linkedin.com/in/rafaelios/")))
        
        speakers.append(Person(name: "Ândriu Felipe Coelho", desc: "Possui experiência em desenvolvimento de software com foco em aplicativos para plataforma iOS. Participa de comunidades como slack.", image: "andriu", bio:URL(string:"https://www.linkedin.com/in/%C3%A2ndriu-felipe-coelho-2344b061/")))
        
        speakers.append(Person(name: "Thiago Zavaschi", desc: "Premier Field Engineer at Microsoft", image: "thiago", bio:URL(string:"https://www.linkedin.com/in/zavaschi/")))
        
        speakers.append(Person(name: "Milton Carvalhaes Filho", desc: "AMCP (Microsoft Certified professional) e um dos fundadores da ONG MTAC (Multi-Platform Technical Audience Contributor) onde nosso foco é difundir e ensinar tecnologia a todos do Brasil.", image: "milton", bio:URL(string:"https://www.linkedin.com/in/miltoncfilho/")))
        
        speakers.append(Person(name: "Fernanda Saraiva", desc: "Community Program Manager at Microsoft.", image: "fernanda", bio:URL(string:"https://www.linkedin.com/in/fesaraiva/")))
        
        speakers.append(Person(name: "Henrique Rusca", desc: "Estudou Engenharia Elétrica e Ciência da Computação em Duke University. Grande conhecimento em iOS e Diretor Executivo de Tecnologia na empresa its4company em Miami", image: "henrique", bio:URL(string:"https://www.linkedin.com/in/henrique-rusca-queiroz-de-moraes-20369a58/")))
        
        speakers.append(Person(name: "Marcelo Antonio Maria Junior", desc: "Atua como desenvolvedor iOS, possui conhecimento em desenvolvimento de jogos em javascript.", image: "marcelo", bio:URL(string:"https://www.linkedin.com/in/marcelo-antonio-maria-junior/")))
        
        speakers.append(Person(name: "Vitor A. Vale", desc: "Bacharel em Sistemas de Informação, desenvolvedor full-stack, com ampla experiência em tecnologias Microsoft e Javascript. Associado MTAC Brasil, com foco na difusão de conhecimento e transformação social através da tecnologia.", image: "vitor", bio:URL(string:"https://www.linkedin.com/in/vitoravale/")))
        
        speakers.append(Person(name: "Mauro André B. Mazzola", desc: "Atua como desenvolvedor iOS e Android", image: "vitor", bio:URL(string:"https://www.linkedin.com/in/mauro-andr%C3%A9-barros-mazzola-b02996a4/")))
        
        return speakers
    }
    
}
