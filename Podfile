source 'https://github.com/CocoaPods/Specs'
source 'https://github.com/jamehta/Podspecs'

platform :ios, '9.0'
install! 'cocoapods', :deterministic_uuids => false

project 'TestProj'
use_frameworks!

def global_shared_pods
  pod 'CardIO', '5.5.5' 
end

target 'TestProjFramework' do
  global_shared_pods
end

target 'TestProjTestApp' do
  pod 'TestProj', :path => '.'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ENABLE_BITCODE'] = 'NO'
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end
