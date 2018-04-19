# frozen_string_literal: true

require_relative '../src/d1t2_interquartile_range'

describe D1T2::Calculator do
  describe '#quartiles' do
    context 'when has odd number of elements' do
      let(:odd_numbers) { [3, 7, 5, 4, 8, 8, 9] }
      subject { described_class.new(odd_numbers) }

      it 'excludes middle from quartiles' do
        expect(subject.quartiles).to eql([4.0, 7.0, 8.0])
      end
    end

    context 'when has even number of elements' do
      let(:even_numbers) { [3, 7, 5, 4, 8, 8, 9, 2] }
      subject { described_class.new(even_numbers) }

      it 'includes middle for quartiles' do
        expect(subject.quartiles).to eql([3.5, 6.0, 8.0])
      end
    end

    context 'for test case' do
      let(:numbers) { [3, 7, 8, 5, 12, 14, 21, 13, 18] }
      subject { described_class.new(numbers) }

      it 'gets expected response' do
        expect(subject.quartiles).to eql([6.0, 12.0, 16.0])
      end
    end
  end

  describe '#interquartile_range' do
    context 'when has odd number of elements' do
      let(:odd_numbers) { [3, 7, 5, 4, 8, 8, 9] }
      subject { described_class.new(odd_numbers) }

      it 'excludes middle from quartiles' do
        expect(subject.interquartile_range).to eql(4.0)
      end
    end

    context 'when has even number of elements' do
      let(:even_numbers) { [3, 7, 5, 4, 8, 8, 9, 2] }
      subject { described_class.new(even_numbers) }

      it 'includes middle for quartiles' do
        expect(subject.interquartile_range).to eql(4.5)
      end
    end

    context 'for test case' do
      let(:numbers) { [3, 7, 8, 5, 12, 14, 21, 13, 18] }
      subject { described_class.new(numbers) }

      it 'gets expected response' do
        expect(subject.interquartile_range).to eql(10.0)
      end
    end
  end
end

describe D1T2::ArrayConstructor do
  let(:size) { 6 }
  let(:numbers) { [1, 5, 2, 6, 3, 9] }
  let(:frequencies) { [2, 1, 3, 4, 1, 2] }

  describe '#build' do
    it 'builds the array with the frequencies' do
      expected_response = [1, 1, 5, 2, 2, 2, 6, 6, 6, 6, 3, 9, 9]
      response = described_class.build(size, numbers, frequencies)
      expect(response).to eq(expected_response)
    end
  end
end

describe D1T2::Solution do
  let(:size) { 6 }
  let(:numbers) { [6, 12, 8, 10, 20, 16] }
  let(:frequencies) { [5, 4, 3, 2, 1, 5] }

  it 'gets right interquartile range for built array with frequencies' do
    expect(described_class.answer(size, numbers, frequencies)).to eq(9.0)
  end
end
