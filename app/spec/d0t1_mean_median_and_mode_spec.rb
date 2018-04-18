# frozen_string_literal: true

require_relative '../src/d0t1_mean_median_and_mode'

describe Calculator do
  let(:numbers) { [3, 7, 5, 4, 8, 8, 9] }
  subject { described_class.new(numbers) }

  describe '#mean' do
    it 'calculates the right mean' do
      expect(subject.mean).to eq(6.3)
    end
  end

  describe '#median' do
    context 'when has odd number of elements' do
      it 'median is the middle element' do
        expect(subject.median).to eq(7)
      end
    end

    context 'when has even number of elements' do
      let(:numbers) { [3, 7, 5, 8, 8, 9] }

      it 'median is the mean between the two middle elements' do
        expect(subject.median).to eq((7 + 8) / 2.to_f)
      end
    end
  end

  describe '#mode' do
    context 'when has a single mode' do
      it 'returns the mode' do
        expect(subject.mode).to eq(8)
      end
    end

    context 'when has even number of elements' do
      let(:numbers) { [3, 7, 5, 8, 8, 9, 4, 4] }

      it 'returns the mode with lowest value' do
        expect(subject.mode).to eq(4)
      end
    end
  end
end
