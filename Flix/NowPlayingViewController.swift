//
//  NowPlayingViewController.swift
//  Flix
//
//  Created by Brendan Raftery on 1/9/18.
//  Copyright © 2018 Brendan Raftery. All rights reserved.
//

import UIKit
import AlamofireImage

class NowPlayingViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var movies: [[String: Any]] = []
    //var details: [[String: Any]] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector
            (NowPlayingViewController.didRefresh(_:)), for: .valueChanged)
        
        tableView.insertSubview(refreshControl, at: 0)
        tableView.dataSource = self
        fetchMovies()
    }
    
    @objc func didRefresh(_ refreshControl: UIRefreshControl) {
        fetchMovies()
        refreshControl.endRefreshing()
    }
    
    func fetchMovies() {
        tableView.estimatedRowHeight = 85.0
        tableView.rowHeight = 205.0
        
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed")!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
            // This rill run when network request returns
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data {
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                self.movies = dataDictionary["results"] as! [[String: Any]]
                self.tableView.reloadData()
            }
        }
        task.resume()

    }
    
    /*
    func fetchDetails(movieID: IntegerLiteralType) {
        let url = URL(string: "https://api.themoviedb.org/3/movie/"+String(movieID)+"?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed")!
 
        print("Fetching details")
        print(url)
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
            // This rill run when network request returns
            if let error = error {
                print("error")
                print(error.localizedDescription)
            } else if let data = data {
                print("data")
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                self.details = dataDictionary["root"] as! [[String: Any]]
                self.tableView.reloadData()
            }
        }
        print("end")
        task.resume()
    }
    */
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        
        let movie = movies[indexPath.row]
        let title = movie["title"] as! String
        let overview = movie["overview"] as! String
        
        cell.titleLabel.text = title
        cell.overviewLabel.text = overview
        let bString = "https://image.tmdb.org/t/p/w500"
        let pString = movie["poster_path"] as! String
        let pURL = URL(string: bString + pString)!
        cell.posterImage.af_setImage(withURL: pURL)

        let rating = movie["vote_average"] as! Double

        cell.s1.alpha = 1
        
        cell.s1.layer.masksToBounds = true
        cell.s1.image = UIImage(named: "Gold_Star_HalfG")
        cell.s2.image = UIImage(named: "Gold_Star_Grey")
        cell.s3.image = UIImage(named: "Gold_Star_Grey")
        cell.s4.image = UIImage(named: "Gold_Star_Grey")
        cell.s5.image = UIImage(named: "Gold_Star_Grey")
        
        if rating >= 1.50 { // 1.0
            cell.s1.image = UIImage(named: "Gold_Star")
        }
        if rating >= 2.50 { // 1.5
            cell.s2.image = UIImage(named: "Gold_Star_HalfG")
        }
        if rating >= 3.50 { // 2.0
            cell.s2.image = UIImage(named: "Gold_Star")
        }
        if rating >= 4.50 { // 2.5
            cell.s3.image = UIImage(named: "Gold_Star_HalfG")
        }
        if rating >= 5.50 { // 3.0
            cell.s3.image = UIImage(named: "Gold_Star")
        }
        if rating >= 6.50 { // 3.5
            cell.s4.image = UIImage(named: "Gold_Star_HalfG")
        }
        if rating >= 7.50 { // 4.0
            cell.s4.image = UIImage(named: "Gold_Star")
        }
        if rating >= 8.50 { // 4.5
            cell.s5.image = UIImage(named: "Gold_Star_HalfG")
        }
        if rating >= 9.50 { // 5.0
            cell.s5.image = UIImage(named: "Gold_Star")
        }
        
        cell.starBack.layer.masksToBounds = true
        cell.starBack.layer.cornerRadius = 5
        
        //fetchDetails(movieID: id)
    
        //print(details)
        
        //let info = details[indexPath.row]
        //let runtime = info["runtime"] as! String
        
        //print(runtime)
        //let hours = rt!/60
        //let minutes = rt!%60
        /*
        var time = ""
        if minutes >= 10 {
            time = String(String(hours) + ":" + String(minutes))
        } else {
            time = String(String(hours) + ":0" + String(minutes))
        }

        cell.timeLabel.text = time
        */
        activityIndicator.stopAnimating()
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
