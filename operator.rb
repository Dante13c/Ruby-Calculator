# Module Imports
require_relative 'register'

module Operator
  def self.actions(input)
  
    def self.number?(str)
      !!Float(str) rescue false 
    end 


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
    else
      is_number = number?(input)
      if is_number
        puts "your number: #{input.inspect}"
      end
    end
  end

  OPERATIONS = {
    CLOSE: "\e",
    CTRl_C: "\u0003",

    ADD: "+",
    SUB: "-",
    MUL: "*",
    DIV: "/"
  }
end
