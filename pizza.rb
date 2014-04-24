class Pizza
  attr_accessor :toppings, :size, :new_topping, :delivery_time

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

  def deliver!
    @delivery_time = Time.now + 30 * 60
  end

  def late?
    if @delivery_time <= Time.now - 30 * 60
      'late'
    else
      'on time'
    end
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


# deliver! - Marks a @delivery_time attribute on the pizza for 30 minutes from now (Time.now + 30*60). Create an optional now argument to this method if you are having trouble testing this.
# late? - Should return true if it is past the delivery time, false otherwise.
