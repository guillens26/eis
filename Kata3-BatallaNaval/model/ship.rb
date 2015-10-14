class Ship
  
  #Es abstracta
  def initialize()
    raise 'Doh! You are trying to instantiate an abstract class!'
  end


  def size
    @size
  end

  def ubication
    @ubication
  end

  def state
    @state
  end

  def name
    @name
  end

end