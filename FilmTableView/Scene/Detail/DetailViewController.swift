//
//  DetailViewController.swift
//  FilmTableView
//
//  Created by Giuseppe Sapienza on 19/02/19.
//  Copyright © 2019 Giuseppe Sapienza. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var receivedFilm: Film?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView.image = self.receivedFilm?.image
        self.titleLabel.text = self.receivedFilm?.title
        self.descriptionTextView.text = self.receivedFilm?.description

    }
    


}
