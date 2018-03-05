//
//  ViewController.swift
//  ProgrammaticallyPicker
//
//  Created by Tobioka on 2017/10/29.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    var label: UILabel!
    /// [marker1]
    
    /// [marker2]
    let items = [
        "選択肢1",
        "選択肢2",
        "選択肢3",
        ]
    /// [marker2]

    /// [marker3]
    override func viewDidLoad() {
        super.viewDidLoad()

        let picker = UIPickerView(
            frame: CGRect(x: 0.0, y: 20.0, width: view.bounds.width, height: 160.0)
        )
        picker.dataSource = self
        picker.delegate = self
        view.addSubview(picker)
        
        label = UILabel(
            frame: CGRect(x: 0.0, y: picker.frame.maxY + 8.0, width: view.bounds.width, height: 30.0)
        )
        label.textAlignment = .center
        view.addSubview(label)
    }
    /// [marker3]


}

/// [marker4]
extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
}
/// [marker4]

/// [marker5]
extension ViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = items[row]
    }
}
/// [marker5]


