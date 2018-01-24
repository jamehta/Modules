Pod::Spec.new do |s|
s.name      = "TestProj"
s.version   = "0.0.1.local"
s.summary   = "Wallet Module for iOS"
s.homepage  = "https://github.com/fdm-ios-wallet/Modules.git"
s.author    = "Janki"
s.platform  = :ios, "9.0"

# ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

s.source    = { :git => "https://github.com/ios-wallet/Modules.git", :branch => "develop" }


# ――― Dependencies ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
s.dependency 'CardIO', '5.5.5'

# ――― Contents ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

s.source_files = 'TestProj/TestProjFramework/TestProjFramework/**/*.swift', 'TestProj/TestProjFramework/TestProjFramework.h'

s.resource = 'TestProj/TestProjFramework/**/*.{storyboard,xib,json,otf,ttf,strings,xcassets}'

s.frameworks = 'Security', 'SystemConfiguration', 'UIKit'

s.libraries = 'c++', 'z'


end
