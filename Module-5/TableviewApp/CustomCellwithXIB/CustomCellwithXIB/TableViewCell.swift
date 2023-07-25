//
//  TableViewCell.swift
//  CustomCellwithXIB
//
//  Created by MAC03 on 25/07/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_cell: UILabel!
    @IBOutlet weak var img_cell: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
