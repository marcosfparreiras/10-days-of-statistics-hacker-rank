# frozen_string_literal: true

module D0T1
  class Calculator
    def initialize(numbers)
      @numbers = numbers
    end

    def mean
      (@numbers.inject(:+).to_f / @numbers.size).round(1)
    end

    def median
      sorted_numbers = @numbers.sort
      middle = @numbers.size / 2
      return sorted_numbers[middle] if @numbers.size.odd?
      (sorted_numbers[middle] + sorted_numbers[middle - 1]) / 2.to_f
    end

    def mode
      modes = @numbers.each_with_object({}) do |number, hsh|
        hsh[number] ||= 0
        hsh[number] += 1
      end

      max_mode = modes.values.max
      modes = modes.select { |_key, value| value == max_mode }
      modes.keys.sort.first
    end
  end
end

# Answer on HackerRank
if $PROGRAM_NAME == __FILE__
  _ = gets.strip.to_i
  numbers_string = gets.strip
  numbers = numbers_string.split(' ').map(&:to_i)

  calculator = D0T1::Calculator.new(numbers)
  puts calculator.mean
  puts calculator.median
  puts calculator.mode
end
