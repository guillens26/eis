class Chopper

  def chop(int,array)
    array.length - 1
  end

  def sum(array)
    numbers = ['cero', 'uno', 'dos', 'tres', 'cuatro']
    if(array == [])
      'vacio'
    else
      total = 0
      array.each do |elem|
        total += elem 
        end
      numbers[total]
    end
  end 

  


end