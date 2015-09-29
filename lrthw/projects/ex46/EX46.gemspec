# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "EX46"
  spec.version       = '1.0'
  spec.authors       = ["Catie Stallings"]
  spec.email         = ["catiestallings1@gmail.com"]
  spec.summary       = %q{Part of Ex46 in LRTHW}
  spec.description   = %q{I am testing out the skeleton directory template in LRTHW ex46}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/EX46.rb']
  spec.executables   = ['bin/EX46']
  spec.test_files    = ['tests/test_EX46.rb']
  spec.require_paths = ["lib"]
end
