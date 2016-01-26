//
//  TBHourMinutePickerView.swift
//  OnFit
//
//  Created by Thiago-Bernardes on 8/17/15.
//  Copyright (c) 2015 OnfFit. All rights reserved.
//

import UIKit


@objc public protocol TBHourMinutePickerViewDelegate{
    
    optional func didSelectHour(pickerView: TBHourMinutePickerView, hour: Int)
    optional func didSelectMinute(pickerView: TBHourMinutePickerView, minute: Int)
    
}


@objc public class TBHourMinutePickerView: UIPickerView, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    let hoursArray : [String] = NSArray.arrayWithStringsOfRange(0 ... 23)
    let minutesArray : [String] = NSArray.arrayWithStringsOfRange(0 ... 59)
    
    public var myDelegate: TBHourMinutePickerViewDelegate?
    public var selectedDate: NSDate = NSDate()
    var selectedHour: Int?
    var selectedMinute: Int?
    public var labelFont: UIFont = UIFont(name: "AvenirNext-UltraLight", size: 35)!
    public var labelTextColor : UIColor = .blackColor()
    public var rowHeight : CGFloat = 40
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        self.dataSource = self
        self.delegate = self
    }
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override public func drawRect(rect: CGRect) {
        self.addDoublePointLabel()
    }
    
    public func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
        let componentsHourMinuteDate = NSDateComponents.dateComponentsFrom(selectedDate)
        
        if component == 0 {
            selectedHour = Int(hoursArray[row])!
            componentsHourMinuteDate.hour = selectedHour!
        }else{
            selectedMinute = Int(minutesArray[row])!
            componentsHourMinuteDate.minute = selectedMinute!
        }
        
        selectedDate = NSDate.dateByComponents(componentsHourMinuteDate)
        
        if let myDelegate = self.myDelegate{
            
            component == 0 ? myDelegate.didSelectHour?(self, hour: row) : myDelegate.didSelectMinute?(self, minute: row)
        }
        
    }
    
    public func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    public func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return component == 0 ? hoursArray.count : minutesArray.count
    }
    
    public func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return rowHeight
    }
    
    public func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 100
    }
    
    public func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        
        (pickerView.subviews[1] ).hidden = true
        (pickerView.subviews[2] ).hidden = true
        
        var textView = view as? UILabel
        if textView == nil{
            textView = UILabel()
            textView?.font = labelFont
            textView?.textColor = labelTextColor
            textView?.textAlignment = .Center
            textView?.numberOfLines = 1
            
            
        }
        
        textView?.text =  component == 0 ? hoursArray[row] : minutesArray[row]
        
        
        return textView!
    }
    
    internal func addDoublePointLabel(){
        let pointLabel = UILabel()
        pointLabel.text = ":"
        
        let textSizeWidth = pointLabel.intrinsicContentSize().width
        let textSizeHeight = pointLabel.intrinsicContentSize().width
        pointLabel.frame = CGRectMake(self.bounds.origin.x +  textSizeWidth/2 , self.bounds.origin.y - textSizeHeight/2, self.bounds.width, self.bounds.height)
        
        pointLabel.font = labelFont
        pointLabel.textColor = labelTextColor
        pointLabel.textAlignment = .Center
        self.addSubview(pointLabel)
        
    }
    
    
    
    
    
}
