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
      Register::storage_num(input, false, false)
      LogicModule::interpreter(FirstOperand, SecondOperand, OperatorCurrent)
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
