Pod::Spec.new do |s|

  s.name         = "SearchEmojiOnString"
  s.version      = "1.1.0"
  s.summary      = "Category to search emojis on an NSString. The category allows to check if has emojis, the number of emojis and the range of the emojis."

  s.homepage     = "https://github.com/GabrielMassana"
  s.license      = { :type => 'MIT', :file => 'LICENSE.md'}
  s.author       = { "Gabriel Massana" => "gabrielmassana@gmail.com" }

  s.source       = { :git => "https://github.com/GabrielMassana/SearchEmojiOnString-iOS.git", :tag => s.version, :branch => "master"}

  s.source_files  = "SearchEmojiOnString-iOS/**/*.{h,m}"

  s.requires_arc = true

  s.ios.deployment_target = '7.0'
  s.watchos.deployment_target = '2.0'

end

