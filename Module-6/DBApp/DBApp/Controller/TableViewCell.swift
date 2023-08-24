//
//  TableViewCell.swift
//  DBApp
//
//  Created by MAC03 on 24/08/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_fullname: UILabel!
    @IBOutlet weak var lbl_subject: UILabel!
    @IBOutlet weak var lbl_city: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
