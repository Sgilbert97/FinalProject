//
//  ViewController.swift
//  FinalProject
//
//  Created by Savannah Gilbert on 5/8/20.
//  Copyright © 2020 Savannah Gilbert. All rights reserved.
//

import UIKit

class Global {
    var nameVar = String()
    var sliderVar:Int = 0
    var pickerVar = String()
}
let global = Global()

class ViewController: UIViewController {
    
    
    @IBOutlet weak var navView: UIView!
    
    @IBOutlet weak var myName: UITextField!
    
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func datePickerChanged(_ sender: Any) {
        let dateFormatter = DateFormatter()

        dateFormatter.dateStyle = DateFormatter.Style.short

        let strDate = dateFormatter.string(from: datePicker.date)
        dateLabel.text = strDate
        
        self.datePicker.setValue(UIColor.white, forKeyPath: "textColor")
    }
    
    
    
    
    @IBOutlet weak var theName: UILabel!
    
    @IBOutlet weak var thePicker: UILabel!
    
    @IBOutlet weak var theSlider: UILabel!
    
    
    
    @IBAction func myButton(_ sender: Any) {
        global.nameVar = myName.text!
        theName.text = "Name: " + global.nameVar
        myName.resignFirstResponder()
    }
    
    
    
    @IBAction func clickMenu(_ sender: UIBarButtonItem) {
        if(navView.isHidden) {
            navView.isHidden = false
        }
        else {
            navView.isHidden = true
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navView.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool){
    theSlider.text = "Importance: \(global.sliderVar)"
    thePicker.text = "Task: \(global.pickerVar)"
    }
    
}

