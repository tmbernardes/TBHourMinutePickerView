Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '8.0'
.name             = "TBHourMinutePickerView"
s.summary          = "A subclass of UIPickerVew that make a custom control of hour and minutes selection"
s.requires_arc = true

# 2
s.version          = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "[Thiago Bernardes]" => "tmb0710@gmail.com" }

# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/thiagotmb/TBHourMinutePickerView"


# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/thiagotmb/TBHourMinutePickerView.git", :tag => "#{s.version}"}

# 7
s.framework = "UIKit"

# 8
s.source_files = "TBHourMinutePickerView/**/*.{swift}"

# 9
s.resources = "TBHourMinutePickerView/**/*.{png,jpeg,jpg,storyboard,xib}"

end