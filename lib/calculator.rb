class Calculator
  def initialize(number1, number2,operation)
    @number1 = number1
    @number2 = number2
    @operation = operation
  end

  def operation
  if @operation == "addition"
    @number1 + @number2
  elsif @operation == "subtraction"
    @number1 - @number2
  elsif @operation == "multiplication"
      @number1 * @number2.round(3)
  elsif @operation == "divition"
    (@number1 / @number2).round(3)
  end
  end
end
