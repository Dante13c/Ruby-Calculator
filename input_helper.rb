# Module Imports
require_relative 'operator'
require_relative 'register'
require_relative 'input_helper'

module InputProcessor
  def self.input_processor(input)
    filter_string = input.to_s

    # Number validation
    def self.valid?(str)

      case str
        when Operator::OPERATIONS[:ADD] then return true
        when Operator::OPERATIONS[:SUB] then return true
        when Operator::OPERATIONS[:MUL] then return true 
        when Operator::OPERATIONS[:DIV] then return true
        when Operator::OPERATIONS[:DOT] then return true
        when Operator::OPERATIONS[:EVALUATE_RETURN] then return true
        when Operator::OPERATIONS[:EVALUATE_EQUAL] then return true
        else
          !!Float(str) rescue false
      end
    end
    
    char = valid?(filter_string)
    
    if char 
      puts "your filtered string: #{filter_string.inspect}"
    else
      return
    end
  end
end



