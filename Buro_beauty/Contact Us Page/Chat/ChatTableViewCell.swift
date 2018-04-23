//
//  ChatTableViewCell.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 4/19/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {

    @IBOutlet weak var clientLabelName: UILabel!
    
    
    @IBOutlet weak var textchat: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
