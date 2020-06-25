def isPrimo(n)   
   a = [];
   #Essa parte faz os restos de divisão e armazena os restos zero num array
   for i in 1..n
    if(n%i==0)    
       a<<i;     
    end
   end
   #aqui é verificado se o número é primo pelo tamanho do array
result = 0;
   if(a.length()==2)
      result=a[1];
   else return false
   end
   return result
end

def contadorPrimos(j)
   n = 1;
   counter = 0;
   resultado = 0;
   while counter < j
   if isPrimo(n)!= false
      resultado=isPrimo(n)
      n+=1
      counter+=1
   else n+=1
   end
end
   return puts resultado
end
puts "Insira um número"
contadorPrimos(gets.chomp.to_i);

#Ao rodar esse código, o primo 10001 é 104743. Só demora tipo 3 minutos
# para retornar o resultado....



