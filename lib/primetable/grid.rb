module Primetable
  class Grid
    attr_writer :row_factory

    def self.build(row)
      new(row: row).build
    end

    def initialize(row:)
      @row = row
    end

    def build
      Array.new.tap do |ary|
        ary << [nil] + @row

        row = @row.dup
        row.each do |i|
          ary << row_factory.call(i, row)
        end
      end
    end

    private
    def row_factory
      @row_factory ||= ->(number, row) {
        row.reduce([number]) { |_row, i| _row << number * i; _row }
      }
    end
  end
end