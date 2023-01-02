
class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    is_str(first_operand, second_operand)

    case operation
    when '+'
      "#{first_operand} #{operation} #{second_operand} = #{first_operand + second_operand}"
    when '/'
      return "Division by zero is not allowed." if second_operand.zero?
      "#{first_operand} #{operation} #{second_operand} = #{first_operand / second_operand}"
    when '*'
      "#{first_operand} #{operation} #{second_operand} = #{first_operand * second_operand}"
    else
      raise UnsupportedOperation.new
    end
  end

  def self.is_str(first_operand, second_operand)
    raise ArgumentError.new if first_operand.is_a? String or second_operand.is_a? String
  end

  class UnsupportedOperation < RuntimeError; end
end

