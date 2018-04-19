# frozen_string_literal: true

require_relative '../src/d1t1_quartiles'

describe D1T1::Calculator do
  describe '#quartiles' do
    context 'when has odd number of elements' do
      let(:odd_numbers) { [3, 7, 5, 4, 8, 8, 9] }
      subject { described_class.new(odd_numbers) }

      it 'excludes middle from quartiles' do
        expect(subject.quartiles).to eq([4, 7, 8])
      end
    end

    context 'when has even number of elements' do
      let(:even_numbers) { [3, 7, 5, 4, 8, 8, 9, 2] }
      subject { described_class.new(even_numbers) }

      it 'includes middle for quartiles' do
        expect(subject.quartiles).to eq([3, 6, 8])
      end
    end

    context 'for test case' do
      let(:numbers) { [3, 7, 8, 5, 12, 14, 21, 13, 18] }
      subject { described_class.new(numbers) }

      it 'gets expected response' do
        expect(subject.quartiles).to eq([6, 12, 16])
      end
    end
  end
end
