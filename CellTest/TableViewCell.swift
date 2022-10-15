//
//  TableViewCell.swift
//  CellTest
//
//  Created by 정소희 on 2022/10/15.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
