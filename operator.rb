# Module Imports
require_relative 'register'

module Operator
  def self.actions(input)

  case input
    when OPERATIONS[:CLOSE] 
      return
    when OPERATIONS[:ADD]
      puts "You Pressed: #{input.inspect}"
      return
    when OPERATIONS[:SUB]
      puts "You Pressed: #{input.inspect}"
      return
    when OPERATIONS[:MUL]
      puts "You Pressed: #{input.inspect}"
      return
    when OPERATIONS[:DIV]
      puts "You Pressed: #{input.inspect}"
    else
      puts "#{input.inspect} is not a valid operator"
    end
  end

  OPERATIONS = {
    CLOSE: "\e",
    CTRl_C: "",

    ADD: "+",
    SUB: "-",
    MUL: "*",
    DIV: "/"
  }
end
