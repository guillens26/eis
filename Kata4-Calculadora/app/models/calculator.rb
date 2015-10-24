class Calculator
  
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

  def sum(num1, num2)
    set_operator1(num1)
    set_operator2(num2)
    @total = @operator1 + @operator2
    @total
  end

end