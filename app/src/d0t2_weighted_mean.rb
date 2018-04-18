# frozen_string_literal: true

class Calculator
  class << self
    def weighted_mean(numbers, weights)
      sums = numbers.map.with_index { |_, i| numbers[i] * weights[i] }
      nominator = sums.inject(:+).to_f
      denominator = weights.inject(:+).to_f
      (nominator / denominator).round(1)
    end
  end
end

# Answer on HackerRank
if $PROGRAM_NAME == __FILE__
  _ = gets.strip.to_i
  numbers_string = gets.strip
  weights_string = gets.strip

  numbers = numbers_string.split(' ').map(&:to_i)
  weights = weights_string.split(' ').map(&:to_i)
  puts Calculator.weighted_mean(numbers, weights)
end
