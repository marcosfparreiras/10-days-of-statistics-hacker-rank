# frozen_string_literal: true

require_relative '../src/d1t3_standard_deviation'

describe Calculator do
  let (:numbers) { [10, 40, 30, 50, 20] }

  describe '.standard_deviation' do
    it 'calculates right standard deviation' do
      expect(described_class.standard_deviation(numbers)).to eq(14.1)
    end
  end
end
