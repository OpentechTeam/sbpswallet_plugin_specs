Pod::Spec.new do |s|
  s.name             = 'OTMLReCaptchaAddon'
  s.version          = '0.0.13'
  s.summary          = 'OTMLReCaptchaAddon.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
        OTMLReCaptchaAddon
                       DESC

  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'opentech ios team' => 'ios@opentech.com' }
  
  s.source           = { :git => 'https://github.com/OpentechTeam/sbpswallet_plugin_artifacts.git', :tag => s.version.to_s }
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0', "OTHER_LDFLAGS" => "-ObjC", 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO', 'GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS' => 'NO'}
  s.swift_version = '5.0'
  s.ios.vendored_frameworks = 'OTMLReCaptchaAddon.xcframework'

  s.ios.deployment_target = '15.0'

  s.static_framework = true
  s.dependency "RecaptchaEnterprise", '~>18'
  s.dependency 'OTHFOTML', '0.0.13'
  s.dependency 'OTHFOTMLModels', '0.0.13'
  s.dependency 'OTHFOTMLCore', '0.0.13'
  


end
