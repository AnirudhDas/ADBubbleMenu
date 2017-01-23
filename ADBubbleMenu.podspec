Pod::Spec.new do |s|

  s.name         = "ADBubbleMenu"
  s.version      = "1.0.2"
  s.summary      = "It gives an animation with a bubble of menus."

  s.description  = "It gives an animation with a bubble of menus."

  s.homepage     = "https://github.com/AnirudhDas/ADBubbleMenu"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Aniruddha Das" => "cse.anirudh@gmail.com" }

  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/AnirudhDas/ADBubbleMenu.git", :tag => "#{s.version}" }

  s.source_files  = "Classes", "Classes/**/*.{swift}"

  # s.resources = "Classes/**/*.{png,xib}"

  s.frameworks    =  "Foundation", "UIKit"

  # s.requires_arc = true

  # s.dependency      'MBProgressHUD'
  # s.dependency      'KSReachability'

end
