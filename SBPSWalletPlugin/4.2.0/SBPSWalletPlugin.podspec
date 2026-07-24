Pod::Spec.new do |s|

  s.name             = 'SBPSWalletPlugin'
  s.module_name      = 'SBPSWalletPlugin'

  
  s.version          = '4.2.0'
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
  
  # ReadID_UI.xcframework: framework DINAMICO (Mach-O DYLIB, install name
  # @rpath/ReadID_UI.framework/ReadID_UI) richiesto a RUNTIME dalla variante NFC
  # di IDNowSDKCore. Lo vendorizziamo qui in modo che CocoaPods lo embeddi e lo
  # firmi automaticamente nell'app dell'integratore (fase "[CP] Embed Pods
  # Frameworks"), evitandogli di aggiungerlo a mano come ThirdParty.
  s.ios.vendored_frameworks = 'SBPSWalletPlugin.xcframework', "VendoredFramework/idnowaddon.xcframework", "VendoredFramework/ReadID_UI.xcframework"

  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC", 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO', 'GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS' => 'NO', "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.resources = 'Assets/*'

  s.dependency 'OTHFOTML' , '4.2.0' 
  s.dependency 'OTHFOTMLModels', '4.2.0' 
  s.dependency 'OTHFOTMLCore', '4.2.0'

  s.dependency 'OTMLReCaptchaAddon', '4.2.0' 
  s.dependency 'OTMLMTokenAddon', '4.2.0' 
  s.dependency 'OTMLCardReaderAddon', '4.2.0' 
  s.dependency 'OTMLApplePayAddon', '4.2.0' 
  s.dependency 'OTBarCodeAddon', '4.2.0'

  # NON dichiarare `s.dependency 'IDnowSDK'`: è una libreria STATICA, già
  # incorporata dentro VendoredFramework/idnowaddon.xcframework (~30MB; verificato
  # con otool -L: non compare tra le LC_LOAD_DYLIB @rpath, a differenza di
  # IDNowSDKCore/FaceTecSDK/UnisseySdk che sono dinamiche).
  # Dichiararla qui la fa linkare una seconda volta nel binario dell'app e a
  # runtime si ottiene: "Class FMLiveSwitch... is implemented in both
  # idnowaddon.framework and <app>.debug.dylib".
end
