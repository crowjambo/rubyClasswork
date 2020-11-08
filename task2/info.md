Working environment should already be prepared and Teams are chosen.

Task's objective - select any programming task from previous or ongoing courses (like C, Java and etc.) and rewrite them in Ruby language.

One Team member must select 2 programs. (If Team consist of 1 member - overall 2 programs must be written; If Team consist of 3 members - overall 6 programs must be written).

Also, it is necessary to provide original program's source code and objective formulation.


# Explanation of bisectionAlgo.rb

- https://en.wikipedia.org/wiki/Bisection_method
- simple method of finding the root of function
- taking an upper and lower intervals we iterate slowly through them and divide them by half after each iteration
- used Procs so I could inject my own custom functions into the method, simplifying the code by a lot (same method used in C#)
- other than that, just simple calculations following a mathematical formula

# Explanation of newtonMethod.rb

- https://en.wikipedia.org/wiki/Newton%27s_method
- a faster method of finding a root of a function, because we provide an initial guess
- also just using Procs and simple calculations makes it possible to make a very quick and easy way of implementing this in ruby
- identical to c# in every way

# Source repo
- https://github.com/crowjambo/Numerical_Algorithms
