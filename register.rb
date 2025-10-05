# Module Imports



module Register
  @register_1 = []

  def self.storage(data)
    @register_1.push(data)
    print "#{@register_1}\n"

  end

  def self.all
    @register_1
  end
end



