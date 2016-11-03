class Human
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def invite(name)
    name
  end

  def to_drink(type_of_drink)
    p "#{@name} agrees to drink some #{type_of_drink} with you!"
  end
end


class Drink
  attr_reader :type_of_drink

  def initialize(type_of_drink)
    @type_of_drink = type_of_drink
  end

  def to_s
    @type_of_drink
  end
end

volodya = Human.new("Volodya")
ira = Human.new("Ira")
coffee = Drink.new("Latte")

volodya.invite(ira).to_drink coffee

