lib = File.expand_path('..', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

require 'primetable/prime_generator'
require 'primetable/fib_generator'
require 'primetable/grid'
require 'primetable/renderer'

module Primetable
  def self.render(count, operator, sequence)
    generator = case sequence
                when 'fib'
                  FibGenerator.new
                when 'prime'
                  PrimeGenerator.new
                else
                  fail "Cannot find a generator for #{sequence}"
                end
    
    primes = generator.take(count)
    grid   = Grid.build(primes, operator)
    Renderer.render(grid)
  end
end