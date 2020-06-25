def isPrimo(n)   
   a = [];

   #Essa parte faz os restos de divisão e armazena os restos zero num array
   for i in 1..n
    if(n%i==0)    
       a<<i; 
    end
   end

   #aqui é verificado se o número é primo pelo tamanho do array
   if(a.length()==2)
   return puts "Divisores de #{n}: #{a}. Logo, #{n} é primo."
   else return puts "Divisores de #{n}: #{a}. Logo, #{n} não é primo."
   end

#modificar para que a função possa contar quantos primos foram encontrados
end

isPrimo(56);