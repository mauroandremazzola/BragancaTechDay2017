//
//  SpeakerViewController.swift
//  BragancaTechDay2017
//
//  Created by Mauro André Barros Mazzola on 04/04/17.
//  Copyright © 2017 Mauro André Barros Mazzola. All rights reserved.
//

import UIKit

class SpeakerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    
    var speakers = [Person]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initSpekears()
        table.tableFooterView = UIView()
        table.estimatedRowHeight = 150
        table.rowHeight = UITableViewAutomaticDimension
        view.setNeedsUpdateConstraints()
        view.layoutIfNeeded()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //mark UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return speakers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SpeakerCell", for: indexPath) as? SpeakerCell ?? SpeakerCell()
        
        cell.configure(horizontalSizeClass: traitCollection.horizontalSizeClass,
                       verticalSizeClass: traitCollection.verticalSizeClass)
        
        cell.populate(person: speakers[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = SpeakerDetailViewController.instance(person: speakers[indexPath.row])
        navigationController?.pushViewController(controller, animated: true)
    }
        
    //mark methods
    
    func initSpekears() {
        speakers.append(Person(name: "Djonatas Tenfen", desc: "Ampla experiência em desenvolvimento de software com ênfase em integrações web-service REST.", image: "DJ", bio:URL(string:"https://www.linkedin.com/in/djonatas/")))
        
        speakers.append(Person(name: "Rafael Assis", desc: "Desenvolvedor mobile com ampla experiência em iOS. Atualmente descobrindo novos horizontes em desenvolvimento híbrido com microsoft Xamarin.", image: "rafael", bio:URL(string:"https://www.linkedin.com/in/rafaelios/")))
        
        speakers.append(Person(name: "Ândriu Felipe Coelho", desc: "Possui experiência em desenvolvimento de software com foco em aplicativos para plataforma iOS. Participa de comunidades como slack.", image: "andriu", bio:URL(string:"https://www.linkedin.com/in/%C3%A2ndriu-felipe-coelho-2344b061/")))
        
        speakers.append(Person(name: "Thiago Zavaschi", desc: "Premier Field Engineer at Microsoft", image: "thiago", bio:URL(string:"https://www.linkedin.com/in/zavaschi/")))
        
        speakers.append(Person(name: "Milton Carvalhaes Filho", desc: "AMCP (Microsoft Certified professional) e um dos fundadores da ONG MTAC (Multi-Platform Technical Audience Contributor) onde nosso foco é difundir e ensinar tecnologia a todos do Brasil.", image: "milton", bio:URL(string:"https://www.linkedin.com/in/miltoncfilho/")))
        
        speakers.append(Person(name: "Fernanda Saraiva", desc: "Community Program Manager at Microsoft.", image: "fernanda", bio:URL(string:"https://www.linkedin.com/in/fesaraiva/")))
        
        speakers.append(Person(name: "Henrique Rusca", desc: "Estudou Engenharia Elétrica e Ciência da Computação em Duke University. Grande conhecimento em iOS e Diretor Executivo de Tecnologia na empresa its4company em Miami", image: "henrique", bio:URL(string:"https://www.linkedin.com/in/henrique-rusca-queiroz-de-moraes-20369a58/")))
        
        speakers.append(Person(name: "Marcelo Antonio Maria Junior", desc: "Atua como desenvolvedor iOS, possui conhecimento em desenvolvimento de jogos em javascript.", image: "marcelo", bio:URL(string:"https://www.linkedin.com/in/marcelo-antonio-maria-junior/")))
        
        speakers.append(Person(name: "Vitor A. Vale", desc: "Bacharel em Sistemas de Informação, desenvolvedor full-stack, com ampla experiência em tecnologias Microsoft e Javascript. Associado MTAC Brasil, com foco na difusão de conhecimento e transformação social através da tecnologia.", image: "vitor", bio:URL(string:"https://www.linkedin.com/in/vitoravale/")))
    }
    
}
