Pod::Spec.new do |s|
  s.name             = 'NiceButton'
  s.version          = '0.1.0'
  s.summary          = 'A nice button with nice border. It is only a test.'
 
  s.description      = <<-DESC
This fantastic button makes your app look fantastic! It is only a test.
                       DESC
 
  s.homepage         = 'https://github.com/dveraull/NiceButton'
  s.license          = { :type => 'MIT', :text => <<-LICENSE
                   Copyright 2018
                   This is a test.
                 LICENSE
               }
  s.author           = { 'Diana' => 'dianic.veul@gmail.com' }
  s.source           = { :git => 'https://github.com/dveraull/NiceButton.git', :tag => s.version.to_s }
 
  s.swift_version = '4.1'
  s.ios.deployment_target = '11.3'
  s.source_files = 'NiceButton/NiceButton.swift'
 
end