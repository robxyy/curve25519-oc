Pod::Spec.new do |spec|
  spec.name         = 'Curve25519'
  spec.version      = '1.0.0'
  spec.license      = { :type => 'Apache 2.0' }
  spec.homepage     = 'https://github.com/robxyy/Curve25519'
  spec.preserve_path = 'Sources/ed25519/**/*.{c,h}'
  spec.authors      = { 'Rob X' => 'robxyy@gmail.com' }
  spec.summary      = 'Curve25519 contains X25519 and Ed25519 implementations.'

  spec.source       = { :git => 'https://github.com/robxyy/Curve25519.git', :tag => "#{spec.version}" }
  spec.source_files = 'Classes/*.{h,m}', 'Sources/Curve25519/curve25519-donna.c', 'Sources/ed25519/*.{c,h}', 'Sources/ed25519/additions/*.{c,h}', 'Sources/ed25519/nacl_sha512/*.{c,h}', 'Sources/ed25519/nacl_includes/*.{c,h}'
  spec.framework    = 'Security'
  spec.public_header_files = "Classes/*.h"
  spec.requires_arc = true
end
