class Pizza
  attr_accessor :toppings, :size, :new_topping

  def initialize(toppings=[Topping.new("cheese", vegetarian: true)])
    @toppings = toppings
  end

  def vegetarian?
    @toppings.all? do |x|
      x.vegetarian == true
    end
  end

  def add_topping(new_topping)
    @new_topping = new_topping
    @toppings << new_topping
  end

end

class Topping
  attr_accessor :name, :vegetarian

  # Initialize a new Topping
  def initialize(name, vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end

end
