require 'ostruct'
require 'optparse'

module Primetable
  module Options
    def self.parse(args)
      options = OpenStruct.new

      opt_parser = OptionParser.new do |opts|
        opts.banner      = "Usage: primetable [options]"
        options.count    = 10
        options.operator = 'multiply'
        options.sequence = 'prime'

        opts.on("-c", "--count COUNT",
          "Specify COUNT of prime numbers to use") do |o|

          options.count = o.to_i
        end

        opts.on("-o", "--operator OPERATOR",
          "Specify an OPERATOR to build the grid (add|multiply)") do |o|

          options.operator = o
        end

        opts.on("-s", "--seq SEQUENCE",
          "Specify a SEQUENCE generator (prime|fib)") do |o|

          options.sequence = o
        end
      end

      opt_parser.parse!(args)
      options
    end
  end
end