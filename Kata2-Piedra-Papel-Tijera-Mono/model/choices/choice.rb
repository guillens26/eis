class Choice
  
  def initialize
    raise 'Doh! You are trying to instantiate an abstract class!'
  end

  def name
    @name
  end

  def paper 
    @paper
  end

  def scissors 
    @scissors
  end

  def stone 
    @stone
  end

  def monkey 
    @monkey
  end
  
  def compare(choice)
    if choice.name == 'stone'
      self.stone
    elsif choice.name == 'paper'
      self.paper
    elsif choice.name == 'scissors'
      self.scissors
    else
      self.monkey     
    end
  end

end
