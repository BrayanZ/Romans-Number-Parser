require File.expand_path('../../lib/context', __FILE__)
require File.expand_path('../../lib/expression', __FILE__)
require File.expand_path('../../lib/thousand', __FILE__)
require File.expand_path('../../lib/hundred', __FILE__)
require File.expand_path('../../lib/ten', __FILE__)
require File.expand_path('../../lib/one', __FILE__)

class RomansParser

  def interpret input
    context = Context.new(input)
    units = [Thousand.new, Hundred.new, Ten.new, One.new]
    units.each do |unit|
      expression = unit.interpret context
    end
    context.output
  end

end
