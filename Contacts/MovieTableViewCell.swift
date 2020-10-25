//
//  MovieTableViewCell.swift
//  Contacts
//
//  Created by Field Employee on 10/23/20.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var likeSlider: UISlider!
    @IBOutlet var viewedSwitch: UISwitch!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    
    
}
