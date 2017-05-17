//
//  SpeakerCell.swift
//  BragancaTechDay2017
//
//  Created by Mauro André Barros Mazzola on 04/04/17.
//  Copyright © 2017 Mauro André Barros Mazzola. All rights reserved.
//

import UIKit

class SpeakerCell: UITableViewCell {

    @IBOutlet weak var imagePerson: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imagePerson.cornerRadius = imagePerson.frame.width / 2
        selectionStyle = .none
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func populate(person: Person) {
        labelName.text = person.name
        imagePerson.image = UIImage(named: person.image)
    }

}
