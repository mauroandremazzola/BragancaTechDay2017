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
    
    var lecture: Lecture?
    
    class func instance(lecture: Lecture) -> SpeakerDetailViewController {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SpeakerDetailViewController") as? SpeakerDetailViewController ?? SpeakerDetailViewController()
        controller.lecture = lecture
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
        imagePerson.image = UIImage(named: lecture?.speaker.image ?? "")
        labelName.text = lecture?.speaker.name
        labelDesc.text = lecture?.speaker.desc
        labelTitle.text = lecture?.title
        labelHour.text = lecture?.hour
    }
    
    func didTapviewLinkedIn(_ sender: UITapGestureRecognizer) {
        if let bio = lecture?.speaker.bio {
            UIApplication.shared.open(bio, options: [String : Any](), completionHandler: nil)
        }
    }
}
