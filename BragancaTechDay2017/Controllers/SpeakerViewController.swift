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
        speakers = PersonData.getSpekears()
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
    
}
