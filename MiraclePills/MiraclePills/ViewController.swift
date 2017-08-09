//
//  ViewController.swift
//  MiraclePills
//
//  Created by Daniel Tilley on 26/01/2017.
//  Copyright © 2017 Daniel Tilley. All rights reserved.
//

import UIKit

//PickerDataSource tell super class that this is the data class for the picker
//Delegate kind of like on click listener / array adapter

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    let countys = ["Antrim", "Armagh", "Carlow", "Cavan", "Clare", "Cork", "Derry", "Donegal", "Down", "Dublin", "Fermanagh", "Galway", "Kerry", "Kildare", "Kilkenny", "Laois", "Leitrim", "Limerick", "Longford", "Louth", "Mayo", "Meath", "Monaghan", "Offaly", "Roscommon", "Sligo", "Tipperary", "Tyrone", "Waterford", "Westmeath", "Wexford", "Wicklow"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //need to set vars to this class (dataSource and Delegate)
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //START PICKER VIEW CODE
    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
    }
    
    //how many items in the picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //how many rows for each item
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countys.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countys[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(countys[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }
    //END PICKER VIEW CODE

}

