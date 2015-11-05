lib = File.expand_path('lib')
$:.unshift(lib) unless $:.include?(lib)

require 'primetable/version'

Gem::Specification.new do |s|
  s.name        = "primetable"
  s.version     = Primetable::VERSION
  s.authors     = ["Thibault Gautriaud"]
  s.email       = ["thibault.gautriaud@gmail.com"]
  s.summary     = "Print a table of numbers"
  s.description = "Print a table of the addition or product of n primes or fibonacci"
  s.homepage    = "https://github.com/hubb/primetable"

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency 'rspec', '~> 3.3', '>= 3.3.0'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*/*_spec*`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.license      = 'MIT'
end