Pod::Spec.new do |s|
  s.name         = "CustomSDK"
  s.version      = "1.0.0"
  s.summary      = "A custom SDK for iOS."
  s.description  = "CustomSDK provides various features for iOS apps."
  s.homepage     = "https://github.com/1410avi/CustomSDK"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Avinash Soni" => "avinash.soni@grayquest.com" }
  s.source       = { :git => "git@github.com:1410avi/CustomSDK.git", :tag => "1.0.0" }
  s.swift_version = "5.0"
  s.platform     = :ios, '15.0'
  s.source_files = 'CustomSDK/**/*.swift'
  s.frameworks   = 'UIKit', 'Foundation'
end
