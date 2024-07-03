//
//  InfoTableViewController.swift
//  HomeWork
//
//  Created by Данил Забинский on 03.07.2024.
//

import UIKit

class InfoTableViewController: UIViewController {
    
   
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var filmDescription: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = filmDescription
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let film = sender as? Movies {
            descriptionLabel.text = film.description
        }
    }
    
}
