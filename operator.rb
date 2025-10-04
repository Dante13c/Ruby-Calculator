# Module Imports
require_relative 'register'

module Operator
  def self.actions(input)
    
  case input
    when OPERATIONS[:ADD]
      puts "You Selected: Addition"
      return
    when OPERATIONS[:SUB]
      puts "You Selected: Subtraction "
      return
    when OPERATIONS[:MUL]
      puts "You Selected: Multiplication"
      return
    when OPERATIONS[:DIV]
      puts "You Selected: Division"
      return
    when OPERATIONS[:EVALUATE_RETURN]
      puts "Enter Evaluation"
      return
    when OPERATIONS[:EVALUATE_EQUAL]
      puts "Equal Evaluation"
      return
    else
      Register::storage(input)
    end
  end

  OPERATIONS = {
    CLOSE: "\e",
    CTRl_C: "\u0003",
    
    ADD: "+",
    SUB: "-",
    MUL: "*",
    DIV: "/",
    DOT: ".",

    EVALUATE_RETURN: "\r",
    EVALUATE_EQUAL: "="
  }
end
