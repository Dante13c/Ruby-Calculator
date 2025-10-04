# Module Imports
require_relative 'operator'
require_relative 'register'

module InputProcessor
  def self.input_processor(data)
    Operator::actions(data)
    Register::storage(data)
  end
end
