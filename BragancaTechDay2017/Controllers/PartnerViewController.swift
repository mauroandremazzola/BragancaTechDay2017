//
//  PartnerViewController.swift
//  BragancaTechDay2017
//
//  Created by Mauro André Barros Mazzola on 04/04/17.
//  Copyright © 2017 Mauro André Barros Mazzola. All rights reserved.
//

import UIKit

class PartnerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    
    var partners = [Partner]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initPartners()
        table.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //mark table
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partners.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PartnerCell", for: indexPath) as? PartnerCell ?? PartnerCell()
        cell.populate(partner: partners[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UIApplication.shared.open(partners[indexPath.row].site, options: [String : Any](), completionHandler: nil)
    }
    
    //mark methods
    
    func initPartners() {
        partners.append(Partner(name: "its4", site: URL(string: "http://www.its4.com"), image: "logo_its4"))
        partners.append(Partner(name: "Fatec", site: URL(string: "https://www.vestibularfatec.com.br/home"), image: "logo_fatec"))
        partners.append(Partner(name: "Casa do Código", site: URL(string: "https://www.casadocodigo.com.br"), image: "casa-do-codigo"))
        partners.append(Partner(name: "Jet Brains", site: URL(string: "https://www.jetbrains.com"), image: "logo-jet-brains"))
        
    }
}
