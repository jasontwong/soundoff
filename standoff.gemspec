# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name                  = 'soundoff'

  s.version               = '0.0.1'

  s.authors               = ['Jason T. Wong']
  s.email                 = ['jwong@joinspartan.com']
  s.homepage              = 'https://github.com/jasontwong/standoff'

  # s.license               = 'MIT'
  s.summary               = 'the instafailing RSpec progress bar formatter'
  s.description           = 'the instafailing RSpec progress bar formatter'

  s.rdoc_options          = ['--charset', 'UTF-8']
  # s.extra_rdoc_files      = %w[README.md LICENSE]

  s.rdoc_options          = ['--charset', 'UTF-8']
  # s.extra_rdoc_files      = %w[README.md LICENSE]

  # Manifest
  s.files                 = Dir.glob("lib/**/*")
  # s.test_files            = Dir.glob("{test,spec,features}/**/*")
  # s.executables           = Dir.glob("bin/*").map{ |f| File.basename(f) }
  s.require_paths         = ['lib']

  s.add_dependency              'rspec',              '~> 3.0'
end
