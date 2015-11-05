require 'spec_helper'
require 'primetable/fib_generator'

describe Primetable::FibGenerator do
  specify { expect(described_class).to respond_to(:take) }

  describe 'take' do
    it 'collection of the sum of the previous 2 elements' do
      fib = described_class.new.take(6)

      expect(fib).to eq([1,1,2,3,5,8])
    end

    it 'returns minimum 2 elements' do
      fib = described_class.new.take(1)

      expect(fib).to eq([1,1])
    end
  end
end
