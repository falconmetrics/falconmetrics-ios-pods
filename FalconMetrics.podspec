Pod::Spec.new do |s|
    s.name             = 'FalconMetrics'
    s.version          = '1.0.1'
    s.summary          = 'FalconMetrics iOS SDK'
    s.description      = 'FalconMetrics SDK for iOS applications. Provides precise mobile ad attribution for iOS apps.'
    s.homepage         = 'https://www.falconmetrics.io'
    s.license          = { :type => 'Proprietary', :text => 'Copyright 2025 FalconMetrics LLC. All rights reserved.' }
    s.author           = { 'FalconMetrics' => 'support@falconmetrics.io' }
    s.source           = { :http => 'https://falconmetrics-sdk.s3.eu-west-1.amazonaws.com/ios/1.0.1/FalconMetrics.xcframework.zip', 
                           :sha256 => '4deb0e2cc99926c8b54f7811e4683f4fe795c638bd9b3b78301ac11fb32c9d12' }
    
    s.ios.deployment_target = '13.0'
    s.swift_versions = ['5.7']
    
    s.vendored_frameworks = 'FalconMetrics.xcframework'
  
    # Exclude i386 architecture while supporting arm64 for M1/M2 simulators
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  end
  