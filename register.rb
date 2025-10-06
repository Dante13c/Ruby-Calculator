# Module Imports
require_relative 'operator'

FirstOperand = []
SecondOperand = []
OperatorCurrent = []

module Register
  @register_1 = []
  @register_2 = []

  def self.storage_num(data, char_type, payload) 
    char = data
    is_num = char_type
    is_operator = payload

    case
      when is_num && !is_operator
        @register_1.push(char)
        print "Register 1: #{@register_1}\n"
      when !is_num && is_operator
        if @register_2.empty?
          OperatorCurrent.push(char) 
          print "Register 2: #{@register_2}\n"
          FirstOperand.push(@register_1)
          @register_1 = []
        else 
          return
        end
      else
        SecondOperand.push(@register_1)
    end


  end
end



