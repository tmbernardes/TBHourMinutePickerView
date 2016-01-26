# TBHourMinutePickerView

[![Version](https://img.shields.io/cocoapods/v/TBHourMinutePickerView.svg?style=flat)](http://cocoapods.org/pods/TBHourMinutePickerView)
[![License](https://img.shields.io/cocoapods/l/TBHourMinutePickerView.svg?style=flat)](http://cocoapods.org/pods/TBHourMinutePickerView)
[![Platform](https://img.shields.io/cocoapods/p/TBHourMinutePickerView.svg?style=flat)](http://cocoapods.org/pods/TBHourMinutePickerView)

![alt tag](https://raw.github.com/thiagotmb/TBHourMinutePickerView/master/Example/tbhourminutepicker.gif)

## Usage
Add to your podfile 
```ruby
pod "TBHourMinutePickerView"
```

```Swift
//Import
import TBHourMinutePickerView

//Setup
var hourMinutePicker = TBHourMinutePickerView(frame: self.view.frame)
hourMinutePicker.myDelegate = self
hourMinutePicker.rowHeight = 35
hourMinutePicker.labelTextColor = .whiteColor()
hourMinutePicker.labelFont = UIFont(name: "AvenirNext-UltraLight", size: 35)!=
self.view.addSubView(hourMinutePicker)

//Delegates 
func didSelectHour(pickerView: TBHourMinutePickerView, hour: Int) {

}

func didSelectMinute(pickerView: TBHourMinutePickerView, minute: Int) {

}

```
To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
IOS 8.0

## Installation

TBHourMinutePickerView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:



## Author

thiagotmb, tmb0710@gmail.com

## License

TBHourMinutePickerView is available under the MIT license. See the LICENSE file for more info.

