Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '10.0'
s.name             = "TBHourMinutePickerView"
s.summary          = "A subclass of UIPickerVew that make a custom control of hour and minutes selection"
s.requires_arc = true
s.screenshots = "https://camo.githubusercontent.com/d5719d3b4fbc421ea8b6094c6ef5371d6284a06d/68747470733a2f2f7261772e6769746875622e636f6d2f74686961676f746d622f5442486f75724d696e7574655069636b6572566965772f6d61737465722f4578616d706c652f7462686f75726d696e7574657069636b65722e676966"
# 2
s.version          = "0.1.3"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.authors = { "[Thiago Bernardes]" => "tmb0710@gmail.com","Victor Cotrim" => "cotrim149@gmail.com" }

# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/thiagotmb/TBHourMinutePickerView"


# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/thiagotmb/TBHourMinutePickerView.git", :tag => "#{s.version}"}

# 7
s.framework = "UIKit"

# 8
s.source_files = "TBHourMinutePickerView/**/*.{swift}"

# 9 - Say to xcode your swift version code
s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }
end
