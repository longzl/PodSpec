Pod::Spec.new do |s|
  s.name         = "HSXCAPKit-OpenCV24x"
  s.version      = "2.4.11"
  s.summary      = "OpenCV (Computer Vision) for iOS."
  s.description  = <<-DESC
                   OpenCV: open source computer vision library

                   Homepage: http://opencv.org

                   Online docs: http://docs.opencv.org
                   Q&A forum: http://answers.opencv.org
                   Dev zone: http://code.opencv.org
                   DESC
  s.homepage     = "http://opencv.org"
  s.license      = "MIT"
  s.author       = "opencv.org"
  s.platform     = :ios, "11.0.0"
  s.source       = { :git => "https://github.com/longzl/HSXCAPKit-OpenCV24x.git", :tag => "v#{s.version}" }
  s.ios.vendored_frameworks = 'opencv2.framework'
  s.libraries = "c++"
  s.frameworks = "Accelerate", "AssetsLibrary", "AVFoundation", "CoreGraphics", "CoreImage", "CoreMedia", "CoreVideo", "Foundation", "QuartzCore", "UIKit"
  s.requires_arc = false
  s.source_files  = 'fwrite2003.c'

  s.dependency 'HSXCAPKit-3rdparty-libs', '~> 0.1.0'
end