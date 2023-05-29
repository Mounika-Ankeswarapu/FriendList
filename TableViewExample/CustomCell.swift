//
//  CustomCell.swift
//  TableViewExample
//
//  Created by Mounika Ankeswarapu on 17/05/23.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var friendView: UIView!
    
    @IBOutlet weak var avatarImg: UIImageView!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
