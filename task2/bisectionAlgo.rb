# C# source code
# OBJECTIVE: create Bisection/Half-cut numerical method

# using System;

# public class Bisection
# {
#     public double? ExecuteBisectionMethod(
#         Func<double,double> function,
#         double lower,
#         double upper,
#         double error
#     ){
#         //variables input
#         Func<double,double> f = function;
#         double x0 = lower;
#         double x1 = upper;
#         double err = error;

#         //iterator for ouput
#         int iterator = 1;

#         bool Converged = false;
#         //midpoint aka root
#         double x2;

#         //main logic
#         do{
            
#             x2 = (x0 +x1)/2;
#             if(f(x0) * f(x2) < 0){
#                 //if true, reached negative
#                 x1 = x2;
#             }
#             else{
#                 x0 = x2;
#             }
#             //evaluate function at new midpoint, and is it less than the error
#             Converged = Math.Abs(f(x2)) <= err;


#             //iterations display
#             Console.WriteLine($"n = {iterator++}\n x0 = {x0}\n x1 = {x1}\n x2(midpoint) = {x2}\n F(x2) = {Math.Abs(f(x2))}\n\n-----\n");

#         } while(!Converged);
    

#         if(Converged){
#             return x2;
#         } else {
#             //if not converged
#             return null;
#         }
#     }
# }

def execute_bisection_method(function, lower, upper, error)
    x0 = lower
    x1 = upper
    err = error
    iterator = 1
    converged = false
    x2 = 0.0
    loop do
        x2 = (x0 +x1)/2
        if function.call(x0) * function.call(x2) < 0
            x1 = x2
        else 
            x0 = x2
        end

        converged = ( ( function.call(x2) ).abs <= err )

        if converged
            break
        end
    end

    return x2

end

# inputs

function = Proc.new {|x| x**2 - 612 }
lower = 10.0
upper = 30.0
error = 0.05

# result
puts(execute_bisection_method function, lower, upper, error)

# explanation = READ info.MD