//
//  ProfileSetupViewController.swift
//  FoodTracker
//
//  Created by Katherine Peterson on 2015-09-28.
//  Copyright © 2015 KatieExpatriated. All rights reserved.
//

import Foundation
import UIKit
import Parse
import ParseUI

class ProfileSetupViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    // MARK: Properties
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var credentialPickerView: UIPickerView!
    var credentials: String!
    let pickerData = ["Food Critic", "Casual Foodie"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        credentialPickerView.delegate = self
        credentialPickerView.dataSource = self
    }
    
    //MARK: - Delegates and data sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        credentials = pickerData[row]
    }

}

