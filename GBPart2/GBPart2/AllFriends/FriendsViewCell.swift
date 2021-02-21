//
//  FriendsViewCell.swift
//  GBPart2
//
//  Created by Olya on 25.12.2020.
//

import UIKit

class FriendsViewCell: UITableViewCell {

    @IBOutlet weak var friendName: UILabel!
 
    @IBOutlet weak var friendImage: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
