//
//  SignUpViewController.swift
//  BragancaTechDay2017
//
//  Created by Mauro André Barros Mazzola on 04/04/17.
//  Copyright © 2017 Mauro André Barros Mazzola. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var pikerInterest: UIPickerView!
    @IBOutlet weak var textEmail: UITextField!
    @IBOutlet weak var textCompany: UITextField!
    @IBOutlet weak var buttonSend: UIButton!
    @IBOutlet weak var textCity: UITextField!
    
    var interests = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interests = ["iOS", "Android", "Desenvolvimento Híbrido", "Banco de dados", "IoT - Internet of Things", "Web Services"]
        scrollView.keyboardDismissMode = .interactive
        let tap = UITapGestureRecognizer(target: self, action: #selector(viewTapped))
        tap.delegate = self
        view.addGestureRecognizer(tap)
        scrollView.addGestureRecognizer(tap)
        pikerInterest.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   //mark UIGestureRecognizerDelegate
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }

    //mark methods
    
    func viewTapped() {
        view.endEditing(true)
    }
    
    //mark UIPickerViewDelegate UIPickerViewDataSource
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return interests.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return interests[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        viewTapped()
    }
    
    //mark action
    
    @IBAction func buttonSend(_ sender: UIButton) {
    }
}