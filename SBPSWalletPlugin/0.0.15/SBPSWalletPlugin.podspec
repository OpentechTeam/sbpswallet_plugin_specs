Pod::Spec.new do |s|

  s.name             = 'SBPSWalletPlugin'
  s.module_name      = 'SBPSWalletPlugin'

  
  s.version          = '0.0.15'
  s.summary          = 'Opentech Hibrid Framework plug-in'
  s.description      = <<-DESC
Opentech Hibrid Framework plug-in
                       DESC

  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'opentech ios team' => 'ios@opentech.com' }
  s.source           = { :git => 'https://github.com/OpentechTeam/sbpswallet_plugin_artifacts.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '15.0'
  s.static_framework = true 
  
  s.ios.vendored_frameworks = 'SBPSWalletPlugin.xcframework', "VendoredFramework/idnowaddon.xcframework"

  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC", 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO', 'GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS' => 'NO', "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.resources = 'Assets/*'

  s.dependency 'OTHFOTML' , '0.0.15' 
  s.dependency 'OTHFOTMLModels', '0.0.15' 
  s.dependency 'OTHFOTMLCore', '0.0.15'

  s.dependency 'OTMLReCaptchaAddon', '0.0.15' 
  s.dependency 'OTMLMTokenAddon', '0.0.15' 
  s.dependency 'OTMLCardReaderAddon', '0.0.15' 
  s.dependency 'OTMLApplePayAddon', '0.0.15' 
  s.dependency 'OTBarCodeAddon', '0.0.15'

  # NON dichiarare `s.dependency 'IDnowSDK'`: è una libreria STATICA, già
  # incorporata dentro VendoredFramework/idnowaddon.xcframework (~30MB; verificato
  # con otool -L: non compare tra le LC_LOAD_DYLIB @rpath, a differenza di
  # IDNowSDKCore/FaceTecSDK/UnisseySdk che sono dinamiche).
  # Dichiararla qui la fa linkare una seconda volta nel binario dell'app e a
  # runtime si ottiene: "Class FMLiveSwitch... is implemented in both
  # idnowaddon.framework and <app>.debug.dylib".
end
