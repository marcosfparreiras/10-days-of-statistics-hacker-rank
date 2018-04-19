# frozen_string_literal: true

class Calculator
  class << self
    def standard_deviation(numbers)
      mean = mean(numbers)
      square_distance_sum = numbers.inject(0) do |sum, number|
        sum + (number - mean) ** 2
      end
      Math.sqrt(square_distance_sum / numbers.size).round(1)
    end

    private

    def mean(numbers)
      (numbers.inject(:+).to_f / numbers.size).round(1)
    end
  end
end

# Answer on HackerRank
if $PROGRAM_NAME == __FILE__
  _ = gets.strip.to_i
  numbers_string = gets.strip
  numbers = numbers_string.split(' ').map(&:to_i)

  puts Calculator.standard_deviation(numbers)
end
