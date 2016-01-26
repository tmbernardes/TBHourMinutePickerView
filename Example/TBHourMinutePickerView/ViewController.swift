//
//  ViewController.swift
//  TBHourMinutePickerView
//
//  Created by thiagotmb on 08/23/2015.
//  Copyright (c) 2015 thiagotmb. All rights reserved.
//

import UIKit
import TBHourMinutePickerView

class ViewController: UIViewController, TBHourMinutePickerViewDelegate{

    
    @IBOutlet weak var hourMinutePicker: TBHourMinutePickerView!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
        
        hourMinutePicker.myDelegate = self
        hourMinutePicker.rowHeight = 35
        hourMinutePicker.labelTextColor = .whiteColor()
        hourMinutePicker.labelFont = UIFont(name: "AvenirNext-UltraLight", size: 35)!
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func didSelectHour(pickerView: TBHourMinutePickerView, hour: Int) {
        
        hourLabel.text = "Hour: \(hour)"
        dateLabel.text = "Date: \(pickerView.selectedDate)"

    }

    func didSelectMinute(pickerView: TBHourMinutePickerView, minute: Int) {
        
        minuteLabel.text = "Minute: \(minute)"
        dateLabel.text = "Date: \(pickerView.selectedDate)"

    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

