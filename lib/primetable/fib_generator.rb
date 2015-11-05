module Primetable
  class FibGenerator
    def self.take(count)
      new.take(count)
    end

    def take(count)
      return [1,1] if count == 1
      each.take(count)
    end

    def each
      Enumerator.new do |yielder|
        yielder << 1 << 1
        each.lazy.zip(each.lazy.drop(1)).each do |a,b|
          yielder << a + b
        end
      end
    end
  end
end