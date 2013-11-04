class Expression
  def interpret context
    return if context.input.nil?

    if context.input.start_with?(nine())
      context.output += 9 * multiplier
      context.input = context.input.slice!(2..-1)
    elsif context.input.start_with?(four())
      context.output += 4 * multiplier
      context.input = context.input.slice!(2..-1)
    elsif context.input.start_with?(five())
      context.output += 5 * multiplier
      context.input = context.input.slice!(1..-1)
    end

    while(!context.input.nil? && context.input.start_with?(one()))
      context.output += 1 * multiplier
      context.input = context.input.slice!(1..-1)
    end
  end
end
