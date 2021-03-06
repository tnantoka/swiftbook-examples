//
//  ViewController.swift
//  ComponentPicker
//
//  Created by Tobioka on 2017/11/12.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    /// [marker1]
    @IBOutlet var labels: [UILabel]!
    /// [marker1]

    /// [marker2]
    let items = [
        ["選択肢1-1", "選択肢1-2", "選択肢1-3"],
        ["選択肢2-1", "選択肢2-2", "選択肢2-3"],
        ["選択肢3-1", "選択肢3-2", "選択肢3-3"]
    ]
    /// [marker2]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/// [marker3]
extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items[component].count
    }
}
/// [marker3]

/// [marker4]
extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        labels[component].text = items[component][row]
    }
}
/// [marker4]

