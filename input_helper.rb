# Module Imports
require_relative 'operator'
require_relative 'register'
require_relative 'input_helper'

module InputProcessor
  def self.input_processor(input)
    filter_string = input.to_s

    # Input validation
    def self.valid?(str)
      
      # Operations, "." and evaluation buttons always return true 
      case str
        when Operator::OPERATIONS[:ADD] then return true
        when Operator::OPERATIONS[:SUB] then return true
        when Operator::OPERATIONS[:MUL] then return true 
        when Operator::OPERATIONS[:DIV] then return true
        when Operator::OPERATIONS[:DOT] then return true
        when Operator::OPERATIONS[:EVALUATE_RETURN] then return true
        when Operator::OPERATIONS[:EVALUATE_EQUAL] then return true
        else
          !!Float(str) rescue false #Return true only for in 
      end
    end

    def self.number?(str)
      !!Float(str) rescue false
    end
   
    # Checks if valid to print as an integer(true) or not(false)
    char = valid?(filter_string)
    
    # If char is valid, send to operator as int else send as is  
    if char
      is_num = number?(filter_string)

      # If char  is valid and  is_num is true data is sent to operator
      if is_num
        Operator::actions(filter_string)
      else   
        Operator::actions(filter_string)
      end
    else
      return        # If neither valid for print or an operation do nothing 
    end
  end
end



