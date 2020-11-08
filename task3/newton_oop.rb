# frozen_string_literal: true

class NewtonCalculator
  def initialize(f, g, x0 = 1.0, err = 0.1)
    @f = f
    @g = g
    @initial_guess = x0
    @err = err
  end

  def calculate
    converged = false
    i = 0
    x0 = @initial_guess
    x1 = 0

    loop do
      return nil if @g.call(x0).zero?

      i += 1
      x1 = x0 - @f.call(x0) / @g.call(x0)
      puts "iteration count #{i}\nx0 = #{x0}\nx1 = #{x1}"
      x0 = x1
      converged = (@f.call(x1).abs <= @err)
      break if converged
    end
    x1
  end
end

# inputs
function = proc { |x| x**2 - 612.0 }
derivative = proc { |x| 2 * x }
initial_guess = 20.0
error = 0.05

# result
calculator = NewtonCalculator.new(function, derivative, initial_guess, error)
puts calculator.calculate
