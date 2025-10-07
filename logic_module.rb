# Module Imports
require_relative 'operator'

module LogicModule
  def self.add(num_1, num_2)
    x = Float(num_1.join) rescue 0
    y = Float(num_2.join) rescue 0
    return x + y
  end

  def self.sub(num_1, num_2)
    x = Float(num_1.join) rescue 0
    y = Float(num_2.join) rescue 0
    return x - y
  end

  def self.mul(num_1, num_2)
    x = Float(num_1.join) rescue 0
    y = Float(num_2.join) rescue 0
    return x * y
  end

  def self.div(num_1, num_2)
    x = Float(num_1.join) rescue 0
    y = Float(num_2.join) rescue 0
    return x / y rescue "woah there brotha!, i cant divide nothing by nothing?"
  end

  def self.interpreter(first , second, operator)
    case operator[0]
      when Operator::OPERATIONS[:ADD]
        result = add(first, second)
        puts "Result: #{result}"
        FirstOperand.clear
        SecondOperand.clear
        OperatorCurrent.clear
      when Operator::OPERATIONS[:SUB]
        result = sub(first, second)
        puts "Result: #{result}"
        FirstOperand.clear
        SecondOperand.clear
        OperatorCurrent.clear
      when Operator::OPERATIONS[:MUL]
        result = mul(first, second)
        puts "Result: #{result}"
        FirstOperand.clear
        SecondOperand.clear
        OperatorCurrent.clear
      when Operator::OPERATIONS[:DIV]
        result = div(first, second)
        puts "Result: #{result}"
        FirstOperand.clear
        SecondOperand.clear
        OperatorCurrent.clear
      
    end
  end
end
