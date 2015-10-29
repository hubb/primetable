require 'spec_helper'
require 'primetable/renderer'

describe Primetable::Renderer do
  let(:grid) {
    [
      [nil,  2,  3,  5],
      [  2,  4,  6, 10],
      [  3,  6,  9, 15],
      [  5, 10, 15, 25]
    ]
  }
  subject(:renderer) { described_class.new(grid: grid) }

  it 'renders the grid', :stdout do
    renderer.render
    FakeStd.out.rewind

    expect(FakeStd.out.read).to eq(<<-EOS
   |  2  3  5 
---+---------
 2 |  4  6 10 
 3 |  6  9 15 
 5 | 10 15 25 
EOS
    )
  end
end