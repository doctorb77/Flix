//
//  DetailViewController.swift
//  Flix
//
//  Created by Brendan Raftery on 1/20/18.
//  Copyright © 2018 Brendan Raftery. All rights reserved.
//

import UIKit
import AlamofireImage

class DetailViewController: UIViewController {

    @IBOutlet weak var backDropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    @IBOutlet weak var s1: UIImageView!
    @IBOutlet weak var s2: UIImageView!
    @IBOutlet weak var s3: UIImageView!
    @IBOutlet weak var s4: UIImageView!
    @IBOutlet weak var s5: UIImageView!
    @IBOutlet weak var starBack: UIView!
    
    var movie: [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overviewLabel.sizeToFit()
        //self.tabBarController?.tabBar.isHidden = true
        
        if let movie = movie {
            titleLabel.text = movie["title"] as? String
            releaseDateLabel.text = movie["release_date"] as? String
            overviewLabel.text = movie["overview"] as? String
            let backdropPathString = movie["backdrop_path"] as! String
            let posterPathString = movie["poster_path"] as! String
            let bString = "https://image.tmdb.org/t/p/w500"
            
            let backdropURL = URL(string: bString + backdropPathString)!
            backDropImageView.af_setImage(withURL: backdropURL)
            
            let posterPathURL = URL(string: bString + posterPathString)!
            posterImageView.af_setImage(withURL: posterPathURL)
            
            let rating = movie["vote_average"] as! Double
            
            overviewLabel.sizeToFit()
            
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
