//
//  FirstTableViewCell.swift
//  HomeWork
//
//  Created by Данил Забинский on 03.07.2024.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        dateLabel.text = nil
        nameLabel.text = nil
        imageLabel.image = nil
    }
    
    func config (film: Movies) {
        nameLabel.text = film.name
        dateLabel.text = film.year
        imageLabel.image = film.picture
    }

}
