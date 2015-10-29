require 'ostruct'
require 'optparse'

module Primetable
  module Options
    def self.parse(args)
      options = OpenStruct.new

      opt_parser = OptionParser.new do |opts|
        opts.banner = "Usage: primetable [options]"
        options.count = 10

        opts.on("-c", "--count COUNT",
          "Specify COUNT of prime numbers to use") do |o|

          options.count = o.to_i
        end
      end

      opt_parser.parse!(args)
      options
    end
  end
end