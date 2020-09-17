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
      totalCost = 0
      orders.each do |orderArray|
        orderArray.each do | orderName, quantity |
          priceInMenu = @menu[orderName]
          totalCost += priceInMenu * quantity
        end
      end
      return totalCost
    end

    def menu_info
      @menu
    end

    def getKeyValue(key)
      @menu[key]
    end
end

restaurant = Restaurant.new({:rice => 3, :noodles => 2})
orders = [{:rice => 2, :noodles => 2}, {:rice => 1, :noodles => 1}]
# orders = {:rice => 2, :noodles => 2}

# puts restaurant.cost orders

# def print_spouses(person, *spouses)
#   spouses.each do |spouse|
#     puts "#{person} married #{spouse}."
#   end
# end

# print_spouses('Elizabeth', 'Conrad', 'Michael', 'Mike', 'Eddie', 'Richard', 'John', 'Larry')


#   MORE INFO

# Hashes ( Dictionary ) - EXAMPLES

#   grades = { "Jane Doe" => 10, "Jim Doe" => 6 }

# Hashes allow an alternate syntax for keys that are symbols. Instead of

#   options = { :font_size => 10, :font_family => "Arial" }
#   options = { font_size: 10, font_family: "Arial" }

# * = splat variable, basically lets you take in a lot of variables
# https://www.honeybadger.io/blog/ruby-splat-array-manipulation-destructuring/

# def go(x, *args, y)
#   puts x # => 1
#   puts y # => 5
#   puts args.inspect # => [2,3,4]
# end

# go(1, 2, 3, 4, 5)

# first, *remainder = [1, 2, 3, 4, 5]
# first
# # => 1
# remainder
# # => [2, 3, 4, 5]

# first, *, last =  [1, 2, 3, 4, 5]
# first
# # => 1
# last
# # => 5



# # Sum some numbers
# (5..10).reduce(:+)                             #=> 45
# # Same using a block and inject
# (5..10).inject { |sum, n| sum + n }            #=> 45
# # Multiply some numbers
# (5..10).reduce(1, :*)                          #=> 151200
# # Same using a block
# (5..10).inject(1) { |product, n| product * n } #=> 151200
# # find the longest word
# longest = %w{ cat sheep bear }.inject do |memo, word|
#    memo.length > word.length ? memo : word
# end
# longest  