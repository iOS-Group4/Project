//
//  TransactionCell.swift
//  iOS-Group4-Project
//
//  Created by Kyou on 11/20/16.
//  Copyright © 2016 Van Do. All rights reserved.
//

import UIKit

class TransactionCell: UITableViewCell {
    @IBOutlet weak var inputTextField: UITextField!

    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
