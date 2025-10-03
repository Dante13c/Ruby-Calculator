# Module Imports
require 'io/console'
require 'benchmark'

# Sub Module Imports
require_relative 'operator'
require_relative 'input_helper'


module ActiveAgent
  def self.init
    @active = false
    @expr = ""
    @History = []
    @IO = []
  end

  # Test Method: Experimental
  def self.test

    # Test Code Here  

    
    # Input Mapper
    @active = true
    while @active do
      @key = STDIN.getch

      if @key == 
        Operator::OPERATIONS[:CLOSE]
        break
      else
        InputProcessor::input_processor(@key)
      end
    end

    # End of test block
    
    # Benchmark
    puts "Running Test......"
    @time = Benchmark.measure do 
      @sum = 0
      (1..1_000_000).each { |i| @sum += i } 
    end
  end
end
