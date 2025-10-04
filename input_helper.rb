# Module Imports
require_relative 'operator'

module InputProcessor
  def self.input_processor(data)
    Operator::actions(data)
  end
end
