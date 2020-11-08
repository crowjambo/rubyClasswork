# C# Code of Netwon method
# Objective: create newton numerical method implementation in c#

# using System;

# //draws tangent between intervals
# public class NewtonMethod{

#     public double? ExecuteNewtonRaphson(
#         Func<double,double> function,
#         Func<double,double> derivative,
#         double initialGuess,
#         double error
#     ){
#         //variables
#         Func<double,double> f = function;
#         Func<double,double> g = derivative;

#         double x0 = initialGuess;
#         double err = error;

#         bool Converged = false;
#         int i = 0;
#         double x1 = 0;

#         do{
#             if(g(x0) == 0){
#                 return null;
#             }
#             x1 = x0 - f(x0) / g(x0);
#             x0 = x1;
#             i++;
#             Converged = Math.Abs(f(x1)) <= err;

#             Console.Write($"iteration {i}\n x1: {x1}\n {x0}\n\n -----");
#         } while (!Converged);

#         if(Converged){
#             return x1;
#         }else{
#             return null;
#         }
#     }
# }

def execute_newton_raphson(function, derivative, initialGuess = 1.0, error = 0.1)
    x0 = initialGuess
    err = error
    converged = false
    i = 0
    x1 = 0

    loop do
        if derivative.call(x0) == 0
            return nil
        end
        x1 = x0 - function.call(x0) / derivative.call(x0)
        x0 = x1
        i += 1
        converged = (function.call(x1).abs <= err)
        puts "iteration count #{i}\nx0 = #{x0}\nx1 = #{x1}"
        if converged
            break
        end

    end
    return x1
end

# inputs
function = Proc.new {|x| x**2 - 612.0 }
derivative = Proc.new {|x| 2*x}
initialGuess = 20.0
error = 0.05

# result
puts execute_newton_raphson function, derivative, initialGuess, error

# explanation = READ info.MD