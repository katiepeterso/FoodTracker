//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by Katherine Peterson on 2015-09-27.
//  Copyright © 2015 KatieExpatriated. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    var meal: Meal? {
        didSet{
            if let meal = meal{
                nameLabel.text = meal.name
                ratingControl.rating = meal.rating
                
                if let mealPhoto = meal.photo {
                    mealPhoto.getDataInBackgroundWithBlock { data, error in
                        if let newData = data {
                            let newImage = UIImage(data: newData)
                            self.photoImageView.image = newImage
                        }
                }
                }
            }
        }
    }
}
