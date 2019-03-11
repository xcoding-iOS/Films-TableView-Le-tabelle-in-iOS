//
//  FilmTableViewCell.swift
//  FilmTableView
//
//  Created by Giuseppe Sapienza on 20/02/19.
//  Copyright © 2019 Giuseppe Sapienza. All rights reserved.
//

import UIKit

class FilmTableViewCell: UITableViewCell {

    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var filmTitleLabel: UILabel!
    @IBOutlet weak var filmContentView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.filmContentView.layer.cornerRadius = 10
        self.filmImageView.layer.cornerRadius = 10
    }


}
