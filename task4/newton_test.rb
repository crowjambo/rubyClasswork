# hello_test.rb
require "test/unit"
require_relative '../task3/newton_oop'

class NewtonCalculatorTest < Test::Unit::TestCase
  def test_should_return_nil
      # ARRANGE
      function = proc { |x| x**2 - 612.0 }
      derivative = proc { |x| 2 * x }
      initial_guess = 0.0
      error = 0.05

      # ACT
      result = NewtonCalculator.new(function, derivative, initial_guess, error).calculate

      # ASSERT
      assert_nil result
  end

  def test_should_calculate_correctly
    # ARRANGE
    functions = [
      proc { |x| x**2 - 612.0 }, 
      proc { |x| x**3 - 300 }, 
      proc { |x| x**6 - 2 * x }]
    derivatives = [
      proc { |x| 2 * x }, 
      proc { |x| 3 * x**2 }, 
      proc { |x| (6 * x**5) - 2 }]
    guesses = [
      20.0, 
      6.0, 
      1.0]
    error = 0.05
    correct_results = [
      24.74, 
      6.69, 
      1.15]
    # ACT
    results = Array.new
    functions.each_with_index do | function, index |
      results.append(NewtonCalculator.new(functions[index], derivatives[index], guesses[index], error).calculate)
    end
    # ASSERT
    results.each_with_index do | result, index |
      assert_equal result, correct_results[index]
    end

  end

end
