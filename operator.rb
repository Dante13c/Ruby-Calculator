# Module Imports
require_relative 'register'
require_relative 'logic_module'

module Operator
  def self.actions(input)
    
  case input
    when OPERATIONS[:ADD]
      Register::storage_num(input, false, true)
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
      if FirstOperand.empty?
        puts "please enter something"
      else
        Register::storage_num(input, false, false)
        LogicModule::interpreter(FirstOperand, SecondOperand, OperatorCurrent)
      end
      return
    when OPERATIONS[:EVALUATE_EQUAL]
      if FirstOperand.empty?
        puts "please enter something"
      else
        Register::storage_num(input, false, false)
        LogicModule::interpreter(FirstOperand, SecondOperand, OperatorCurrent)
      end
      return

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
