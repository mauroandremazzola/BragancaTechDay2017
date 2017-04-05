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
        table.rowHeight = UITableViewAutomaticDimension
        table.estimatedRowHeight = 90
        table.reloadData()
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
        let person = speakers[indexPath.row]
        cell.labelName.text = person.name
        cell.labelDesc.text = person.desc
        cell.imagePerson.image = UIImage(named: person.image)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         UIApplication.shared.open(speakers[indexPath.row].bio, options: [String : Any](), completionHandler: nil)
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
    }
    
}
