# frozen_string_literal: true

class BisectionCalculator
  def initialize(f, lower, upper, error)
    @f = f
    @lower = lower
    @upper = upper
    @err = error
  end

  def calculate
    x0 = @lower
    x1 = @upper
    converged = false
    x2 = 0.0
    loop do
      x2 = (x0 + x1) / 2
      if (@f.call(x0) * @f.call(x2)).negative?
        x1 = x2
      else
        x0 = x2
      end
      converged = (@f.call(x2).abs <= @err)
      break if converged
    end
    x2
  end
end

# inputs

function = proc { |x| x**2 - 612 }
lower = 10.0
upper = 30.0
error = 0.05

# result
calculator = BisectionCalculator.new(function, lower, upper, error)
puts calculator.calculate
