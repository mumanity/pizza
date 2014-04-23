class Pizza
  attr_accessor :toppings

  def initialize(toppings)
    @toppings = toppings
  end

end

class Topping
  attr_accessor :name, :vegetarian

  # Initialize a new Topping
  def initialize(name, vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end

  # name - the String name of the Topping


  # returns a new Topping object


end
