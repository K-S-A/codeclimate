$LOAD_PATH.unshift(File.join(__FILE__, "../lib"))
require "cc/version"

Gem::Specification.new do |s|
  s.name        = "codeclimate"
  s.version     = CC::VERSION
  s.summary     = "Code Climate CLI"
  s.license     = "MIT"
  s.authors     = "Code Climate"
  s.email       = "hello@codeclimate.com"
  s.homepage    = "https://codeclimate.com"
  s.description = "Code Climate command line tool"

  s.files         = Dir["lib/**/*.rb"] + Dir['bin/*']
  s.require_paths = ["lib"]
  s.bindir        = "bin"
  s.executables   = "codeclimate"

  s.add_dependency "activesupport", '~> 4.2', '>= 4.2.1'
  s.add_dependency "faraday", "~> 0.9.1"
  s.add_dependency "faraday_middleware", "~> 0.9.1"
  s.add_dependency "rainbow", '~> 2.0', '>= 2.0.0'
  s.add_dependency "docker-api", '~> 1.21', '>= 1.21.4'
  s.add_dependency "highline",  '~> 1.7', '>= 1.7.2'
  s.add_dependency "pry", "~> 0.10.1"
  s.add_dependency "safe_yaml", '~> 1.0', '>= 1.0.4'
end
