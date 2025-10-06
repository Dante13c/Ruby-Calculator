module LogicModule
  def self.add(num_1, num_2)
    return num_1 + num_2
  end

  def self.interpreter(first , second, operator)
    if first.is_a? && second.is_a?
      x = Float(first)
      y = Float(second)
      if operator == "+"
        puts add(x, y)
      end
    end
  end
end
