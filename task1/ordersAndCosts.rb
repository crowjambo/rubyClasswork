# https://rubymonk.com/learning/books/1-ruby-primer/problems/155-restaurant#solution4804

# Problem Statement

# A restaurant has incoming orders for which you need to compute the costs based on the menu.

# You might get multiple orders at times.

# Examples:
# if the order is {:rice => 1, :noodles => 1}, and the menu is {:rice => 3, :noodles => 2}, then the cost is 5.

# If the orders are {:rice => 1, :noodles => 1} and {:rice => 2, :noodles => 2} and the menu is {:rice => 3, :noodles => 2}, then the cost is 15.

class Restaurant
    def initialize(menu)
      @menu = menu
    end
  
    def cost(*orders)
      orders.inject(0) do |total_cost, order|
        total_cost + order.keys.inject(0) {|cost, key| cost + @menu[key]*order[key] }
      end
    end
  end
  

#   MORE INFO

# https://stackoverflow.com/questions/2491570/why-do-i-need-to-use-inject0-rather-than-inject-to-make-this-work
# https://medium.com/@terrancekoar/inject-method-explained-ed531eff9af8