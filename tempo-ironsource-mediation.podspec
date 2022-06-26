Pod::Spec.new do |spec|

  spec.name         = "tempo-ironsource-mediation"
  spec.version      = "0.0.1"
  spec.summary      = "Tempo ironSource iOS Mediation Adapter."

  spec.description  = <<-DESC
  Using this adapter you will be able to integrate Tempo SDK via ironSource mediation
                   DESC

  spec.homepage     = "https://www.tempoplatform.com"
  spec.license      = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
  spec.author       = { "Vishnu" => "vishnu@tempoplatform.com" }
  
  spec.platform     = :ios, "10.0"
  spec.source       = { :git => "https://github.com/Tempo-Platform/tempo-ios-ironsource-mediation.git", :tag => spec.version.to_s }
  spec.source_files = "TempoIronSourceMediation/*.swift"
  spec.source_files = "TempoIronSourceMediation/*.modulemap"
#  spec.module_map   = "TempoIronSourceMediation/tempo.modulemap"
  
  spec.frameworks   = "Foundation", "UIKit"

  spec.requires_arc = true
  spec.static_framework = true
  spec.swift_version = '5.0'

  spec.dependency "TempoSDK", "~> 0.0.9"
  spec.dependency "IronSourceSDK", "~> 7.2"
  
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER': 'com.tempoplatform.is-adapter-sdk' }
  
end
