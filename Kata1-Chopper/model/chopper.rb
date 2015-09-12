class Chopper

  def chop(int,array)
    array.length - 1
  end

  def sum(array)  
    numbers = ['cero', 'uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis', 'siete', 'ocho', 'nueve']
    resultado = []
    if(array == [])
      'vacio'
    else
      total = 0
      array.each do |elem|
        total += elem 
      end
      if (total<9)    
        numbers[total]
      elsif(total<100)
        resultado << (total - total/10 * 10)
        resultado << total = total/10
        numbers[resultado[1]]+ ',' + numbers[resultado[0]]
      else
        'demasiado grande'
      end
    end
  end 
end