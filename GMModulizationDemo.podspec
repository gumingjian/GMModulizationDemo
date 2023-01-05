#
# Be sure to run `pod lib lint GMModulizationDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GMModulizationDemo'
  s.version          = '1.0.1'
  s.summary          = 'Modulization study!'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/gumingjian/GMModulizationDemo.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'GMJ' => '276122162@qq.com' }
  s.source           = { :git => 'https://github.com/gumingjian/GMModulizationDemo.git', :tag => s.version.to_s }
  s.swift_version = '5.0'
  s.static_framework = true
  s.requires_arc = true
  s.ios.deployment_target = '11.0'

  s.source_files = 'GMModulizationDemo/Classes/**/*'
  
#  s.resource_bundles = {
#    'GMModulizationDemo' => ['GMModulizationDemo/Assets/*.png']
#  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
