




Pod::Spec.new do |s|
  s.name     = "RXTextView"
  s.version  = "0.1"
  s.license  = "MIT"
  s.summary  = "RXTextView have a placeholder label in it"
  s.homepage = "https://github.com/xzjxylophone/RXTextView"
  s.author   = { 'Rush.D.Xzj' => 'xzjxylophoe@gmail.com' }
  s.social_media_url = "http://weibo.com/xzjxylophone"
  s.source   = { :git => 'https://github.com/xzjxylophone/RXTextView.git', :tag => "v#{s.version}" }
  s.description = %{
    RXTextView have a placeholder label in it.
  }
  s.source_files = 'RXTextView/*.{h,m}'
  s.frameworks = 'Foundation', 'UIKit'
  s.requires_arc = true
  s.platform = :ios, '5.0'

end







