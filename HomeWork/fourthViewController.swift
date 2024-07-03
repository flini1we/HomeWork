//
//  fourthViewController.swift
//  HomeWork
//
//  Created by Данил Забинский on 03.07.2024.
//

import UIKit

class Movies {
    var name: String
    var year: String
    var picture: UIImage
    var description: String
    var indicator: UISwitch?
    var state: Bool

    
    init(_ name: String,_ year: String,_ picture: UIImage,_ description: String) {
        self.name = name
        self.year = year
        self.picture = picture
        self.description = description
        self.indicator = UISwitch()
        self.indicator?.isOn = false
        state = false
    }
}

class fourthViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var films: [Movies] = [
        Movies("Cередина 90х", "2018", UIImage(named: "mid90")!, "Драма, рассказывающая о подростке по имени Стебби, который ищет свое место в жизни среди скейтбордистов в Лос-Анджелесе в середине 90-х годов."),
        Movies("Игра в иммитацию", "2014", UIImage(named: "immitation")!, "Комедия о трех друзьях, которые отправляются в путешествие на лодке по реке Миссисипи, чтобы найти спрятанные сокровища."),
        Movies("Социальная сеть", "2010", UIImage(named: "socialNetwork")!, " Фантастический фильм, рассказывающий историю о путешествии группы исследователей в прошлое, чтобы предотвратить глобальную катастрофу будущего."),
        Movies("Интерстеллар", "2014", UIImage(named: "interstellar")!, "Триллер о женщине-детективе, которая расследует серию странных пропаж в небольком провинциальном городке."),
        Movies("Бойцовский клуб", "1999", UIImage(named: "fightClub")!, " Комедийный мюзикл, в центре которого история о девушке, мечтающей стать звездой бродвейского мюзикла и все препятствия на ее пути.")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}
extension fourthViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        films.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell") as? FirstTableViewCell else {
            return UITableViewCell()
        }
        cell.config(film: films[indexPath.row])
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if !films.isEmpty {
            let selectedFilm = films[indexPath.row]
            performSegue(withIdentifier: "InfoTableViewController", sender: selectedFilm)
        } else {
            print("Films array is empty.")
        }
    }
    
}
