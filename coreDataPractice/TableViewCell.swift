//
//  TableViewCell.swift
//  coreDataPractice
//
//  Created by Aaryan Kothari on 10/02/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var mobileLabel: UILabel!
    
    var student : Student! {
        didSet{
            nameLabel.text = student.name
            addressLabel.text = student.address
            cityLabel.text = student.city
            mobileLabel.text = student.mobile

        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
