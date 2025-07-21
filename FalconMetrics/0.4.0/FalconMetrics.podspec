Pod::Spec.new do |s|
    s.name             = 'FalconMetrics'
    s.version          = '0.4.0'
    s.summary          = 'FalconMetrics iOS SDK'
    s.description      = <<-DESC
  FalconMetrics SDK for iOS applications. Provides precise mobile ad attribution for iOS apps.
                         DESC
    s.homepage         = 'https://www.falconmetrics.io'
    s.license          = { :type => 'Proprietary', :text => 'Copyright 2025 FalconMetrics LLC. All rights reserved.' }
    s.author           = { 'FalconMetrics' => 'support@falconmetrics.io' }
    s.source           = { :http => 'https://falconmetrics-sdk.s3.eu-west-1.amazonaws.com/ios/0.4.0/FalconMetricsSDK.xcframework.zip', 
                           :sha256 => '6c6ae6e76a129b23d78699833948f9ccc0a77168631f9c62df0290bb5b85a559' }
    
    s.ios.deployment_target = '13.0'
    s.swift_version = '5.7'
    
    # This command runs after the pod is downloaded. It renames the xcframework
    # to match the module name, which solves the linker issue.
    s.prepare_command = <<-CMD
        mv FalconMetricsSDK.xcframework FalconMetrics.xcframework
    CMD
  
    s.vendored_frameworks = 'FalconMetrics.xcframework'
  
    # Exclude i386 architecture while supporting arm64 for M1/M2 simulators
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  end
  