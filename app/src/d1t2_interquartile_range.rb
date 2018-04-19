# frozen_string_literal: true

module D1T2
  class Calculator
    def initialize(numbers)
      @numbers = numbers.sort
      @quartiles = []
    end

    def quartiles
      middle = @numbers.size / 2
      q3_starting_point = @numbers.size.odd? ? middle + 1 : middle

      @quartiles[0] = median(@numbers[0..(middle - 1)])
      @quartiles[1] = median(@numbers)
      @quartiles[2] = median(@numbers[q3_starting_point..-1])
      @quartiles
    end

    def interquartile_range
      quartiles if @quartiles.empty?
      quartiles[2] - quartiles[0]
    end

    private

    def median(numbers)
      middle = numbers.size / 2
      return format_number(numbers[middle].to_f) if numbers.size.odd?
      value = (numbers[middle] + numbers[middle - 1]) / 2.to_f
      format_number(value)
    end

    def format_number(number)
      number.to_f.round(1)
    end
  end

  class ArrayConstructor
    class << self
      def build(size, numbers, frequencies)
        array = Array.new(size) do |i|
          [numbers[i]] * frequencies[i]
        end
        array.flatten
      end
    end
  end

  class Solution
    class << self
      def answer(size, numbers, frequencies)
        numbers = ArrayConstructor.build(size, numbers, frequencies)
        Calculator.new(numbers).interquartile_range
      end
    end
  end
end

# Answer on HackerRank
if $PROGRAM_NAME == __FILE__
  size = gets.strip.to_i

  numbers_string = gets.strip
  numbers = numbers_string.split(' ').map(&:to_i)

  frequencies_string = gets.strip
  frequencies = frequencies_string.split(' ').map(&:to_i)

  puts D1T2::Solution.answer(size, numbers, frequencies)
end
