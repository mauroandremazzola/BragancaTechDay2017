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
    
    func initSpekears() {
        speakers.append(Person(name: "Djonatas Tenfen", desc: "Ampla experiência em desenvolvimento de software com ênfase em integrações web-service REST.", image: "DJ"))
        
        speakers.append(Person(name: "Rafael Assis", desc: "Desenvolvedor mobile com ampla experiência em iOS. Atualmente descobrindo novos horizontes em desenvolvimento híbrido com microsoft Xamarin.", image: "rafael"))
        
        speakers.append(Person(name: "Ândriu Felipe Coelho", desc: "Possui experiência em desenvolvimento de software com foco em aplicativos para plataforma iOS. Participa de comunidades como slack.", image: "andriu"))
        
        speakers.append(Person(name: "Thiago Zavaschi", desc: "Premier Field Engineer at Microsoft", image: "thiago"))
        
        speakers.append(Person(name: "Milton Carvalhaes Filho", desc: "AMCP (Microsoft Certified professional) e um dos fundadores da ONG MTAC (Multi-Platform Technical Audience Contributor) onde nosso foco é difundir e ensinar tecnologia a todos do Brasil.", image: "milton"))

        speakers.append(Person(name: "Fernanda Saraiva", desc: "Community Program Manager at Microsoft.", image: "fernanda"))
        
        speakers.append(Person(name: "Henrique Rusca", desc: "Estudou Engenharia Elétrica e Ciência da Computação em Duke University. Grande conhecimento em iOS e Diretor Executivo de Tecnologia na empresa its4company em Miami", image: "henrique"))
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
    
}
