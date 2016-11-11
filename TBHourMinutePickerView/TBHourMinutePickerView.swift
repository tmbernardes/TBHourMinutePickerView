//
//  TBHourMinutePickerView.swift
//  OnFit
//
//  Created by Thiago-Bernardes on 8/17/15.
//  Copyright (c) 2015 OnfFit. All rights reserved.
//

import UIKit


@objc public protocol TBHourMinutePickerViewDelegate{
    
    @objc optional func didSelectHour(pickerView: TBHourMinutePickerView, hour: Int)
    @objc optional func didSelectMinute(pickerView: TBHourMinutePickerView, minute: Int)
    
}


@objc public class TBHourMinutePickerView: UIPickerView, UIPickerViewDelegate, UIPickerViewDataSource {
	
	
    var hoursArray : [String]!
	
    var minutesArray : [String]!
    
    public var myDelegate: TBHourMinutePickerViewDelegate?
    public var selectedDate: NSDate = NSDate()
    var selectedHour: Int?
    var selectedMinute: Int?
    public var labelFont: UIFont = UIFont(name: "AvenirNext-UltraLight", size: 35)!
    public var labelTextColor : UIColor = .black
    public var rowHeight : CGFloat = 40
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        self.dataSource = self
        self.delegate = self
		
		let hourRange = Range<Int>(0...23)
		hoursArray = NSArray.arrayWithStringsOfRange(hourRange)
		
		let minutesRange = Range<Int>(0...59)
		minutesArray = NSArray.arrayWithStringsOfRange(minutesRange)
    }
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override public func draw(_ rect: CGRect) {
        self.addDoublePointLabel()
    }
	
	    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
        var componentsHourMinuteDate = DateComponents.dateComponentsFrom(selectedDate as Date)

        
        if component == 0 {
            selectedHour = Int(hoursArray[row])!
            componentsHourMinuteDate.hour = selectedHour!
        }else{
            selectedMinute = Int(minutesArray[row])!
            componentsHourMinuteDate.minute = selectedMinute!
        }
        
        selectedDate = Date.dateByComponents(componentsHourMinuteDate) as NSDate
        
        if let myDelegate = self.myDelegate{
            
            component == 0 ? myDelegate.didSelectHour?(pickerView: self, hour: row) : myDelegate.didSelectMinute?(pickerView: self, minute: row)
        }
        
    }
    
    public func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
	
	@available(iOS 2.0, *)
	public func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 2
	}

    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return component == 0 ? hoursArray.count : minutesArray.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return rowHeight
    }
    
    public func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 100
    }
    
    public func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        (pickerView.subviews[1] ).isHidden = true
        (pickerView.subviews[2] ).isHidden = true
        
        var textView = view as? UILabel
        if textView == nil{
            textView = UILabel()
            textView?.font = labelFont
            textView?.textColor = labelTextColor
            textView?.textAlignment = .center
            textView?.numberOfLines = 1
            
            
        }
        
        textView?.text =  component == 0 ? hoursArray[row] : minutesArray[row]
        
        
        return textView!
    }
    
    internal func addDoublePointLabel(){
        let pointLabel = UILabel()
        pointLabel.text = ":"
        
        let textSizeWidth = pointLabel.intrinsicContentSize.width
        let textSizeHeight = pointLabel.intrinsicContentSize.width
		pointLabel.frame = CGRect(x: self.bounds.origin.x +  textSizeWidth/2 , y: self.bounds.origin.y - textSizeHeight/2, width: self.bounds.width, height: self.bounds.height)
		
        pointLabel.font = labelFont
        pointLabel.textColor = labelTextColor
        pointLabel.textAlignment = .center
        self.addSubview(pointLabel)
        
    }
    
    
    
    
    
}
