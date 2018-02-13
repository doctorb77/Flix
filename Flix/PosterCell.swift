//
//  PosterCell.swift
//  Flix
//
//  Created by Brendan Raftery on 1/21/18.
//  Copyright © 2018 Brendan Raftery. All rights reserved.
//

import UIKit
import AlamofireImage

class PosterCell: UICollectionViewCell {
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    var movie: Movie! {
        didSet {
            posterImageView.af_setImage(withURL: movie.posterUrl!)
        }
    }
}
