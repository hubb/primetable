module Primetable
  class Grid
    attr_writer :row_factory

    def self.build(row, operator)
      new(row: row, operator: operator).build
    end

    def initialize(row:, operator:)
      @row      = row
      @operator = operator
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
        row.each_with_object([number]) { |i, _row|
          _row << number.public_method(operator).call(i);
        }
      }
    end

    def operator
      case @operator
      when 'multiply'
        :*
      when 'add'
        :+
      end
    end
  end
end