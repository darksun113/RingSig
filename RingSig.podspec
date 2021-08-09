Pod::Spec.new do |s|
  s.name             = 'RingSig'
  s.version          = '1.1.0'
  s.summary          = 'An implementation of a ring signature scheme in Swift.'
  s.description      = <<-DESC
The library implements a ring signature scheme in Swift. The algorithm is based on "How to leak a secret" (2001) by Rivest et al.
                       DESC

  s.homepage         = 'https://github.com/FabioTacke/RingSig'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Fabio Tacke' => 'fabio@tacke.berlin' }
  s.source           = { :git => 'https://github.com/FabioTacke/RingSig.git', :tag => 'v' + String(s.version) }
  s.social_media_url = 'https://twitter.com/FabioTacke'

  s.source_files = 'Sources/RingSig/*.swift'
  s.dependency 'BigInt'
  s.dependency 'CryptoSwift'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.12'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  
  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'Tests/RingSigTests/*'
    test_spec.dependency 'BigInt' # This dependency will only be linked with your tests.
  end
end
