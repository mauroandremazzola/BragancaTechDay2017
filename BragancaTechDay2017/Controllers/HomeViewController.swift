//
//  HomeViewController.swift
//  BragancaTechDay2017
//
//  Created by Mauro André Barros Mazzola on 04/04/17.
//  Copyright © 2017 Mauro André Barros Mazzola. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var imageApple: UIImageView!
    @IBOutlet weak var imageAndroid: UIImageView!
    @IBOutlet weak var imageIphone: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageIphone.isHidden = true
        imageApple.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(imageAppleDoubleTapped))
        tap.numberOfTapsRequired = 2
        imageApple.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imageAppleDoubleTapped() {
        UIView.animate(withDuration: 0.3, animations: {
            self.imageIphone.isHidden = false
        }) { (true) in
            UIView.animate(withDuration: 0.3, delay: 0.5, options: [], animations: {
                self.imageAndroid.isHidden = true
            }, completion: nil)
        }

    }
}
