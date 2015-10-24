class Calculator

  def initialize
    @number_of_operations = 0
  end
  
  def operator1
    @operator1
  end
  
  def set_operator1(num)
    @operator1 = num
  end

  def operator2
    @operator2
  end

  def set_operator2(num)
    @operator2 = num
  end

  def total
    @total
  end

  def number_of_operations
    @number_of_operations
  end

  def sum(num1, num2)
    set_operator1(num1)
    set_operator2(num2)
    @number_of_operations = @number_of_operations +1
    @total = @operator1 + @operator2
    @total
  end

  def subtract(num1, num2)
    set_operator1(num1)
    set_operator2(num2)
    @number_of_operations = @number_of_operations +1
    @total = @operator1 - @operator2
    @total
  end

  def average(num1, num2)
    set_operator1(num1)
    set_operator2(num2)
    @number_of_operations = @number_of_operations +1
    @total = (@operator1 + @operator2) /2
    @total
  end

  def reset_number_of_operations()
    @number_of_operations = 0
  end


end