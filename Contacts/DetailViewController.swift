//
//  DetailViewController.swift
//  Contacts
//
//  Created by Field Employee on 10/24/20.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieViewed: UILabel!
    
    var image = UIImage()
    var myTitle = ""
    var rating = ""
    var viewed = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        movieTitle.text = myTitle
        movieRating.text = rating
        movieViewed.text = "Viewed: \(String(viewed))"
        movieImage.image = image
    }
    

    

}
