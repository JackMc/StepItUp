//
//  FriendTableViewCell.swift
//  ios
//
//  Created by Elisa Kazan on 2016-09-17.
//  Copyright © 2016 HackTheNorth. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    @IBOutlet weak var firend_name: UILabel!
    @IBOutlet weak var friend_steps: UILabel!
    @IBOutlet weak var friend_profile: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
