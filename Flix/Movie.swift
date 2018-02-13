//
//  Movie.swift
//  Flix
//
//  Created by Brendan Raftery on 2/12/18.
//  Copyright © 2018 Brendan Raftery. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var overview: String
    var posterUrl: URL?
    var backdropUrl: URL?
    var rating: Double
    var release_date: String
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        overview = dictionary["overview"] as? String ?? "No overview"
        rating = dictionary["vote_average"] as! Double
        release_date = dictionary["release_date"] as? String ?? "Unknown"
        
        let bString = "https://image.tmdb.org/t/p/w500"
        posterUrl = URL(string: bString + (dictionary["poster_path"] as! String))
        
        backdropUrl = URL(string: bString + (dictionary["backdrop_path"] as! String))
    }
    
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }
}
