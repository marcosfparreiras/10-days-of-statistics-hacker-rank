# frozen_string_literal: true

require_relative '../src/d0t2_weighted_mean'

describe Calculator do
  let(:numbers) { [2, 4, 5, 6, 2] }
  let(:weights) { [1, 2, 1, 5, 3] }

  describe '#weighted_mean' do
    it 'calculates the right weighted mean' do
      expect(described_class.weighted_mean(numbers, weights)).to eq(4.3)
    end
  end
end
