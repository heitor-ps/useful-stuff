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
   return puts "#{a[1]} é primo :D"
   else return puts "#{n} não é primo >:("
   end

   #askaposka de novo 

end
isPrimo(11);