//
//  ThirdViewController.swift
//  HomeWork
//
//  Created by Данил Забинский on 02.07.2024.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBOutlet weak var firstField: UITextField!
    
    @IBOutlet weak var secField: UITextField!
    
    
    @IBOutlet weak var button: UIButton!
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        if let text1 = firstField.text, let text2 = secField.text {
            print(text1)
            print(text2)
            // вернуть
            performSegue(withIdentifier: "ViewController", sender: self)
        } else {
            showAlert(title: "Ошибка", message: "Заполните поля")
        }
        
        func showAlert(title: String, message: String) {
            let alertController = UIAlertController(title: title, message: message, preferredStyle:.alert)
            alertController.addAction(UIAlertAction(title: "OK", style:.default))
            present(alertController, animated: true)
        }
        
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "thirdViewCOntroller" {
                
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
