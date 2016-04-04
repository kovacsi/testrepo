Pod::Spec.new do |spec|
  spec.name                 = 'travis-test'
  spec.version              = '1.0.3'
  spec.homepage             = "https://github.com/kovacsi/testrepo.git"
  spec.license              = { :type => 'EPL', :file => 'LICENSE.txt' }
  spec.author               = { "Migeran" => "support@migeran.com" }
  spec.summary              = 'Simple cocoapods test'
  spec.platform             = :ios, "8.4"
  spec.source               = { :git => 'https://github.com/kovacsi/testrepo.git', :tag => '1.0.3' }
  spec.vendored_frameworks  = "Release-iphoneos/TestSDK.framework", "Release-iphonesimulator/TestSDK.framework"
  spec.requires_arc         = true
end
