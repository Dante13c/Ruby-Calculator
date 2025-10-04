# Module Imports
require 'io/console'
require 'benchmark'

# Sub Module Imports
require_relative 'operator'
require_relative 'input_helper'



module ActiveAgent
  def self.init  
 
    # Process Starter
    @active = true
    while @active do
      @key = STDIN.getch
      
      # If 'esc' is pressed breakout of loop
      if @key == 
        Operator::OPERATIONS[:CLOSE]
        break
      elsif @key ==
        Operator::OPERATIONS[:CTRl_C]
        break
      else
        InputProcessor::input_processor(@key)
      end
    end

    # End of test block
    
    # Benchmark
    puts "Ending Session......"
    @time = Benchmark.measure do 
      @sum = 0
      (1..1_000_000).each { |i| @sum += i } 
    end
  end
end
