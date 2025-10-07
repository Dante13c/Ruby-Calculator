# Module Imports
require_relative 'operator'

FirstOperand = []
SecondOperand = []
OperatorCurrent = []

module Register
  @register_1 = []

  def self.storage_num(data, char_type, payload) 
    char = data
    is_num = char_type
    is_operator = payload

    case
      when is_num && !is_operator
        @register_1.push(char)
        runnin_current = @register_1.join
        system('clear')
        print "Calculator: #{runnin_current}\n"
      when !is_num && is_operator
        if @register_1.empty?
          puts "cant do it bud, sorry nothings here!"
        else
          if OperatorCurrent.empty?
            OperatorCurrent.push(char)
            system('clear')
            print "Calculator: #{@register_1.join} #{OperatorCurrent[0].to_s}\n"
            FirstOperand.push(@register_1)
            @register_1 = []
          else 
            return
          end
        end
      else
        SecondOperand.push(@register_1)
        @register_1 = []
    end


  end
end
