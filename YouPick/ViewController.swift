//
//  ViewController.swift
//  YouPick
//
//  Created by Fidel Correa on 10/23/19.
//  Copyright © 2019 MGM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var FoodType: UIPickerView!


    
    var foodPicker: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Connect data:
        self.FoodType.delegate = self
        self.FoodType.dataSource = self
        
        foodPicker = ["Chinese", "American", "Pizza"]
        
            
        
        
        
    }
    
    
    
    @IBAction func submitFood(_ sender: Any) {
        let selectedValue = foodPicker[FoodType.selectedRow(inComponent: 0)]
        
        print(selectedValue)
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return foodPicker.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return foodPicker[row]
    }


}

