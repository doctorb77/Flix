//
//  MovieCell.swift
//  Flix
//
//  Created by Brendan Raftery on 1/9/18.
//  Copyright © 2018 Brendan Raftery. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var s1: UIImageView!
    @IBOutlet weak var s2: UIImageView!
    @IBOutlet weak var s3: UIImageView!
    @IBOutlet weak var s4: UIImageView!
    @IBOutlet weak var s5: UIImageView!
    
    @IBOutlet weak var starBack: UIView!
    
    var movie: Movie! {
        didSet{
            titleLabel.text = movie.title
            overviewLabel.text = movie.overview
            posterImage.af_setImage(withURL: movie.posterUrl!)
            let rating = movie.rating
            
            s1.layer.masksToBounds = true
            s1.image = UIImage(named: "Gold_Star_HalfG")
            s2.image = UIImage(named: "Gold_Star_Grey")
            s3.image = UIImage(named: "Gold_Star_Grey")
            s4.image = UIImage(named: "Gold_Star_Grey")
            s5.image = UIImage(named: "Gold_Star_Grey")
            
            if rating >= 1.50 { // 1.0
                s1.image = UIImage(named: "Gold_Star")
            }
            if rating >= 2.50 { // 1.5
                s2.image = UIImage(named: "Gold_Star_HalfG")
            }
            if rating >= 3.50 { // 2.0
                s2.image = UIImage(named: "Gold_Star")
            }
            if rating >= 4.50 { // 2.5
                s3.image = UIImage(named: "Gold_Star_HalfG")
            }
            if rating >= 5.50 { // 3.0
                s3.image = UIImage(named: "Gold_Star")
            }
            if rating >= 6.50 { // 3.5
                s4.image = UIImage(named: "Gold_Star_HalfG")
            }
            if rating >= 7.50 { // 4.0
                s4.image = UIImage(named: "Gold_Star")
            }
            if rating >= 8.50 { // 4.5
                s5.image = UIImage(named: "Gold_Star_HalfG")
            }
            if rating >= 9.50 { // 5.0
                s5.image = UIImage(named: "Gold_Star")
            }
            
            starBack.layer.masksToBounds = true
            starBack.layer.cornerRadius = 5
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
