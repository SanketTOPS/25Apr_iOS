//
//  TableViewCell.swift
//  CustomCell
//
//  Created by MAC03 on 20/07/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var btn_cell: UIButton!
    @IBOutlet weak var img_cell: UIImageView!
    @IBOutlet weak var lbl_cell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
