# Module Imports
require_relative 'register'

module Operator
  def self.actions(input)
    
  case input
    when OPERATIONS[:ADD]
        if FirstOperand.empty?
          Register::storage_num(input, false, true)
          puts "FirstOperand: #{FirstOperand}"
        elsif SecondOperand.empty? && !FirstOperand.empty?
          puts "addition"
        end
      #Register::storage_num(input, false, true)
      return
    when OPERATIONS[:SUB]
      Register::storage_num(input, false, true)
      return
    when OPERATIONS[:MUL]
      Register::storage_num(input, false, true)
      return
    when OPERATIONS[:DIV]
      Register::storage_num(input, false, true)
      return
    when OPERATIONS[:EVALUATE_RETURN]
      return
    when OPERATIONS[:EVALUATE_EQUAL]
    else
      Register::storage_num(input, true, false)
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
