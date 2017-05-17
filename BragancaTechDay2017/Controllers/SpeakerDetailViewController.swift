//
//  SpeakerDetailViewController.swift
//  BragancaTechDay2017
//
//  Created by Mauro André Barros Mazzola on 16/05/17.
//  Copyright © 2017 Mauro André Barros Mazzola. All rights reserved.
//

import UIKit

class SpeakerDetailViewController: UIViewController {

    @IBOutlet weak var imagePerson: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDesc: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelHour: UILabel!
    @IBOutlet weak var viewLinkedIn: UIView!
    
    var person: Person?
    
    class func instance(person: Person) -> SpeakerDetailViewController {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SpeakerDetailViewController") as? SpeakerDetailViewController ?? SpeakerDetailViewController()
        controller.person = person
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewLinkedIn.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapviewLinkedIn(_:))))
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupUI() {
        view.layoutIfNeeded()
        imagePerson.cornerRadius = imagePerson.frame.height / 2
        imagePerson.image = UIImage(named: person?.image ?? "")
        labelName.text = person?.name
        labelDesc.text = person?.desc
    }
    
    func didTapviewLinkedIn(_ sender: UITapGestureRecognizer) {
        if let bio = person?.bio {
            UIApplication.shared.open(bio, options: [String : Any](), completionHandler: nil)
        }
    }
}
