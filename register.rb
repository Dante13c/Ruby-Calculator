# Module Imports
require_relative 'operator'

FirstOperand = []
SecondOperand = []
OperatorCurrent = []

module Register
  @register_1 = []

  def self.storage(data) 
    @register_1.push(data)
    print "#{@register_1}\n"
    FirstOperand.push(@register_1)
  end
end



