Pod::Spec.new do |s|

    s.name             = 'OTHFOTMLCore'
    s.module_name      = 'OTHFOTMLCore'
  
    s.version          = '0.0.8'
    s.summary          = 'Opentech core layer framework'
    s.description      = <<-DESC
      Opentech Core Framework contains utility classes for the other opentech products
                         DESC
  
    s.homepage         = 'https://opentech.com'
    s.license          = { :type => 'FULL', :file => 'LICENSE' }
    s.author           = { 'opentech ios team' => 'ios@opentech.com' }
    s.source           = { :git => 'https://github.com/OpentechTeam/sbpswallet_plugin_artifacts.git', :tag => s.version.to_s }
    s.ios.deployment_target = '15.0'
    
    s.pod_target_xcconfig = { "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "YES" }
  
    
    s.frameworks = 'MobileCoreServices', 'UIKit', 'Foundation', 'Security', 'CoreTelephony', 'LocalAuthentication', 'SystemConfiguration', 'QuartzCore'

    s.dependency 'SAMKeychain'    
  
    s.ios.vendored_frameworks = 'OTHFOTMLCore.xcframework'
  
  end
  
