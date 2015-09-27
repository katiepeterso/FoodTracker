//
//  Meal.swift
//  FoodTracker
//
//  Created by Katherine Peterson on 2015-09-27.
//  Copyright © 2015 KatieExpatriated. All rights reserved.
//

import Foundation
import UIKit

class Meal {
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}
