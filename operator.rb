module Operator
  def self.actions(input)

    if input == OPERATIONS[:CLOSE] 
      return input.inspect
    end
  end

  OPERATIONS = {
    CLOSE: "\e"
  }
end
