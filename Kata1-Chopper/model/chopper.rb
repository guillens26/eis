class Chopper

  def chop(int, array)
    #Calculo el tamaño de mi arreglo y le resto 1
    array.length - 1
  end

  #Creo numbers para luego traducir el numero a palabras 
  $numbers = ['cero', 'uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis', 'siete', 'ocho', 'nueve']
  
  def sum(array) 
    # Si el array esta vacio devuelvo 'vacio' 
    if(array == [])
      'vacio'
    else
      #Calculo el total del contenido de mis posisiones del arreglo sumando pos x pos
      total = 0
      array.each do |elem|
        total += elem 
      end
      #Imprimo el numero total en palabras
      print_int_in_words(total)
    end
  end 

  def print_int_in_words(int)
    num = int
    # Creo result para guardar los resultados de 2 digitos
    result = []
    #Pregunto para saber si mi entero es de 1 digito
    if (num<9)    
      $numbers[num]
    #Pregunto para saber si mi entero es de mas de dos digitos sino calculo
    elsif(int<100)
      result << (num - num/10 * 10)
      result << num = num/10
      $numbers[result[1]]+ ',' + $numbers[result[0]]
    # Si es de 3 digitos devuelvo 'demasiado grande'
    else
      'demasiado grande'
    end
  end

end