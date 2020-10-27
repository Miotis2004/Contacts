//
//  ViewController.swift
//  Contacts
//
//  Created by Field Employee on 10/23/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let myData = ["The Shawshank Redemption", "The Godfather", "The Godfather Part II", "The Dark Knight", "12 Angry Men", "Schindler's List", "The Lord of the Rings: The Return of the King", "Pulp Fiction", "The Good, The Bad and The Ugly", "The Lord of the Rings: The Fellowship of the Ring", "Fight Club", "Joker", "Inception", "The Lord of the Rings: The Two Towers", "Star Wars: The Empire Strikes Back", "The Matrix", "Goodfellas", "One Flew Over the Cukoo's Nest", "Seven Samurai", "Se7en", "Life is Beautiful", "City of God", "The Silence of the Lambs", "It's a Wonderful Life", "Star wars: A New Hope", "Saving Private Ryan", "Spirited Away", "The Green Mile", "Parasite", "Interstellar"]
    
    let imageData = ["Shawshank", "Godfather", "Godfather2", "DarkKnight", "12AngryMen", "SchindlersList", "LOTR3", "PulpFiction", "GoodBadUgly", "LOTR1", "FightClub", "Joker", "Inception", "LOTR2", "EmpireStrikesBack", "Matrix", "Goodfellas", "CukooNest", "sevensamurai", "Se7en", "LifeIsBeautiful", "CityOfGod", "SilenceLambs", "WonderfulLife", "ANewHope", "PrivateRyan", "SpiritedAway", "GreenMile", "Parasite", "Interstellar"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "MovieTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MovieTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController
        
        guard let currentCell = tableView.cellForRow(at: indexPath) as? MovieTableViewCell else {return}
        let myRating = Int(currentCell.likeSlider.value * 100)
        var isViewed: Bool = false
        if currentCell.viewedSwitch.isOn {
            isViewed = true
        }else {
            isViewed = false
        }
        
        vc?.image = UIImage(named: imageData[indexPath.row])!
        vc?.myTitle = myData[indexPath.row]
        vc?.rating = "Rating: \(myRating) fresh"
        vc?.viewed = isViewed
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    let detailSegueidentifier = "ShowDetailSegue"
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == detailSegueidentifier,
//           let destination = segue.destination as? DetailViewController,
//           let movieIndex = tableView.indexPathForSelectedRow?.row
//        {
//            destination.rating =
//        }
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as! MovieTableViewCell
        
        cell.myLabel.text = myData[indexPath.row]
        cell.myImageView.image = UIImage(named: imageData[indexPath.row])
        
        return cell
    }
        
        
    

}



