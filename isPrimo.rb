


def isPrimo(n)   
   a = [];
   #Essa parte faz os restos de divisão e armazena os restos zero num array
   for i in 1..n
    if(n%i==0)    
       a<<i;     
    end
   end
   #aqui é verificado se o número é primo pelo tamanho do array
result = [];
   if(a.length()==2)
      result<<a[1];
   else return false
   end

   return result;
end

def contadorPrimos(j)
   n = 1;
   arrayResultado = [];
   while arrayResultado.size < j
   if isPrimo(n)!= false
      arrayResultado<<isPrimo(n)
      n+=1
   else n+=1
   end  
end
   return puts arrayResultado
end

contadorPrimos(4);



