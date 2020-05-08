//
//  pickerViewController.swift
//  FinalProject
//
//  Created by Savannah Gilbert on 5/8/20.
//  Copyright © 2020 Savannah Gilbert. All rights reserved.
//

import UIKit

class pickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let items = ["Homework", "Laundry", "Grocery Shop", "Clean Dishes", "Yard Work", "Mow Lawn", "Wash Car"]
    
    var selection:String!
    
    @IBOutlet weak var pickerVal: UILabel!
    
    @IBOutlet weak var picker: UIPickerView!
   
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        pickerVal.text = "Your Task: " + selection
        global.pickerVar = selection
    }
    
    override func viewDidLoad() {
        picker.delegate = self
        picker.dataSource = self
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
