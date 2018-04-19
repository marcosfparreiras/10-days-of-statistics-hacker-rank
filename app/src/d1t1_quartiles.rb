# frozen_string_literal: true

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

  private

  def median(numbers)
    middle = numbers.size / 2
    return numbers[middle] if numbers.size.odd?
    (numbers[middle] + numbers[middle - 1]) / 2
  end
end

# Answer on HackerRank
if $PROGRAM_NAME == __FILE__
  _ = gets.strip.to_i
  numbers_string = gets.strip
  numbers = numbers_string.split(' ').map(&:to_i)

  calculator = Calculator.new(numbers)
  puts calculator.quartiles
end
