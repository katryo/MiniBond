#
# Be sure to run `pod lib lint MiniBond.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MiniBond"
  s.version          = "0.1.0"
  s.summary          = "A very tiny toolkit for reactive programming in Swift."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description      = <<-DESC
  MiniBond make it easy to to implement reactive procedures. This library's main
  idea is came from SwiftBond. SwiftBond is a great library, but is too big
  for me, so I created MiniBond that just solves simple problems.
                       DESC

  s.homepage         = "https://github.com/katryo/MiniBond"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Ryo Kato" => "katoryo55@gmail.com" }
  s.source           = { :git => "https://github.com/katryo/MiniBond.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/katryo'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/*.swift'
  s.resource_bundles = {
    'MiniBond' => []
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
