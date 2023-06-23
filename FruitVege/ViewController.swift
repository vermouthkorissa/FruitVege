//
//  ViewController.swift
//  FruitVege
//
//  Created by 鈴木理紗子 on 2023/06/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fruitTextField:UITextField!
    @IBOutlet weak var vegeTextField:UITextField!
    @IBOutlet weak var saveButton:UIButton!
    
    let saveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
            saveText()
        }

        func saveText() {
            let defaults = UserDefaults.standard
            defaults.set(fruitTextField.text, forKey: "fruitText")
            defaults.set(vegeTextField.text, forKey: "vegeText")
        }

        func loadSavedText() {
            let defaults = UserDefaults.standard
            if let text1 = defaults.string(forKey: "fruitText") {
                fruitTextField.text = text1
            }
            if let text2 = defaults.string(forKey: "vegeText") {
                vegeTextField.text = text2
            }
        }
    }




