lib = File.expand_path('..', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

require 'primetable/generator'

module Primetable
  def self.render(count)
    primes = Generator.take(count)
  end
end