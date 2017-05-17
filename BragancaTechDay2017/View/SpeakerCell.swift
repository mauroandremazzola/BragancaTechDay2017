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
    @IBOutlet weak var imageHeight: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func populate(person: Person) {
        labelName.text = person.name
        imagePerson.image = UIImage(named: person.image)
    }
    
    func configure(horizontalSizeClass: UIUserInterfaceSizeClass, verticalSizeClass: UIUserInterfaceSizeClass) {
        if(horizontalSizeClass == .regular && verticalSizeClass == .regular){
            imageHeight.constant = 100
        }else{
            imageHeight.constant = 50
        }
        setNeedsUpdateConstraints()
        layoutIfNeeded()
        imagePerson.cornerRadius = imagePerson.frame.height / 2
    }

}
