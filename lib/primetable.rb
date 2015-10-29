lib = File.expand_path('..', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

require 'primetable/generator'
require 'primetable/grid'
require 'primetable/renderer'

module Primetable
  def self.render(count)
    primes = Generator.take(count)
    grid   = Grid.build(primes)
    Renderer.render(grid)
  end
end