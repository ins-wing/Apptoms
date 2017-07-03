#
# Be sure to run `pod lib lint Apptoms.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Apptoms'
  s.version          = '0.0.5'
  s.summary          = 'Apptoms Archtecture.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Combine different Apptoms Elements to create a new compound.
                       DESC

  s.homepage         = 'https://github.com/ins-wing/Apptoms'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'WinG@Apptoms' => 'wing.org@gmail.com' }
  s.source           = { :git => 'https://github.com/ins-wing/Apptoms.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.default_subspec = 'Apptoms'

  s.dependency 'SwiftMsgPack'

  s.subspec 'Apptoms' do |sp|
    sp.source_files = 'Apptoms/Classes/Apptoms/*'
  end

  s.subspec 'Hydrogen' do |sp|
    sp.source_files = 'Apptoms/Classes/Hydrogen/*'
  end

  s.subspec 'Helium' do |sp|
    sp.source_files = 'Apptoms/Classes/Helium/*'
  end

  s.subspec 'Lithium' do |sp|
    sp.dependency 'Apptoms/Hydrogen'
    sp.source_files = 'Apptoms/Classes/Lithium/*'
  end

  s.subspec 'Beryllium' do |sp|
    sp.dependency 'Apptoms/Lithium'
    s.dependency 'SwiftMsgPack'
    sp.source_files = 'Apptoms/Classes/Beryllium/*'
  end

  # s.resource_bundles = {
  #   'Apptoms' => ['Apptoms/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
