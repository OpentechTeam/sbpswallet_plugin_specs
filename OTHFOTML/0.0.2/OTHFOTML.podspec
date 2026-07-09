Pod::Spec.new do |s|

  s.name             = 'OTHFOTML'
  s.module_name      = 'OTHFOTML'

  s.version          = '0.0.2'
  s.summary          = 'OTML iOS Framework'
  s.description      = <<-DESC
                    OTML iOS Framework
                       DESC
  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'opentech ios team' => 'ios@opentech.com' }

  s.source           = { :git => 'git@github.com:automatid/automatid_ios_artifacts.git', :tag => s.version.to_s }
  s.swift_version = '5.0'

  s.ios.deployment_target = '15.0'

  s.frameworks = 'MobileCoreServices', 'WatchConnectivity', 'UIKit', 'Foundation', 'Security', 'CoreTelephony', 'StoreKit', 'LocalAuthentication', 'Social', 'CoreVideo', 'SystemConfiguration', 'Accelerate', 'WebKit', 'CoreImage', 'MessageUI', 'AVFoundation', 'CoreMedia', 'QuartzCore'

  s.ios.vendored_frameworks = 'OTHFOTML.xcframework'


  s.dependency 'lottie-ios', '~>4'
  s.dependency 'OTHFOTMLModels', '0.0.2' 
  s.dependency 'OTHFOTTBXML', '0.0.2'
  
  s.dependency 'OTHFOTMLCore', '0.0.2' 
  

end
