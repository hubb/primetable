module Primetable
  class Generator
    POSSIBLE_LAST_CHARS = ['1','3','7','9']

    def self.take(count)
      new.each.take(count)
    end

    def each
      return enum_for(:each) unless block_given?

      (2..Float::INFINITY).lazy.each do |i|
        next if i > 2 && i.even?

        if i > 5
          next if !ends_with_possbile_char?(i)
          next if !has_dividers_other_than_one_and_self?(i)
        end

        yield i
      end
    end

    private
    def ends_with_possbile_char?(i)
      POSSIBLE_LAST_CHARS.include?(i.to_s.chars[-1])
    end

    def has_dividers_other_than_one_and_self?(i)
      (2..i-1).find { |n| i % n == 0 }.nil?
    end
  end
end