//
//  ViewController.swift
//  HomeWorkInterface
//
//  Created by Тагир Файрушин on 02.07.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstField: UITextField!
    
    @IBOutlet weak var secondField: UITextField!
    
    @IBOutlet weak var button: UIButton!
    
    let adminLogin: String = "admin"
    let adminPassword: String = "admin"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myButtonTapped(_ sender: Any) {
        let secondViewController = SecondViewController()
        if let text1 = firstField.text, let text2 = secondField.text {
            if text1 == adminLogin && text2 == adminPassword {
                    performSegue(withIdentifier: "SecondViewController", sender: self)
            } else {
                showAlert(title: "Ошибка", message: "Неверный логин")
            }
        }

    }

    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle:.alert)
        alertController.addAction(UIAlertAction(title: "OK", style:.default))
        present(alertController, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondViewController" {
            
        }
    }
}

