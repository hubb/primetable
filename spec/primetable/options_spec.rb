require 'spec_helper'
require 'primetable/options'

describe Primetable::Options do
  subject(:options) { described_class.parse([]) }

  it { expect(options).to be_a(OpenStruct) }

  describe 'count' do
    it 'default to 10' do
      expect(options.count).to eq(10)
    end

    it 'can be set' do
      options = described_class.parse(['-c', '5'])
      expect(options.count).to eq(5)
    end
  end

  describe 'operator' do
    it 'default to multiply' do
      expect(options.operator).to eq('multiply')
    end

    it 'can be set' do
      options = described_class.parse(['-o', 'add'])
      expect(options.operator).to eq('add')
    end
  end
end