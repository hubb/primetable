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
end