Pod::Spec.new do |s|
  s.name         = "CustomSDK"
  s.version      = "1.0.0"
  s.summary      = "A custom SDK for iOS."
  s.description  = "CustomSDK provides various features for iOS apps."
  s.homepage     = "https://github.com/yourusername/CustomSDK"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Your Name" => "your@email.com" }
  s.source       = { :git => "https://github.com/yourusername/CustomSDK.git", :tag => "1.0.0" }
  s.swift_version = "5.0"
  s.platform     = :ios, '15.0'
  s.source_files = 'CustomSDK/**/*.swift'
  s.frameworks   = 'UIKit', 'Foundation'
end
