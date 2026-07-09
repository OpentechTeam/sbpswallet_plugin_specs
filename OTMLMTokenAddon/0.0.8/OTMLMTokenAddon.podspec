Pod::Spec.new do |s|
  s.name             = 'OTMLMTokenAddon'
  s.version          = '0.0.8'
  s.summary          = 'OTMLMTokenAddon'
  s.description      = <<-DESC
                        OTMLMTokenAddon
                       DESC
  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'iOS team' => 'ios@opentech.com' }
  s.source           = { :git => 'https://github.com/OpentechTeam/sbpswallet_plugin_artifacts.git', :tag => s.version.to_s }

  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC", 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO', 'GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS' => 'NO'}
 s.ios.vendored_frameworks = 'OTMLMTokenAddon.xcframework'

  s.ios.deployment_target = '15.0'
  s.dependency 'OTHFOTML', '0.0.8'
  s.dependency 'OTHFOTMLModels', '0.0.8'
  s.dependency 'OTHFOTMLCore', '0.0.8'

end
