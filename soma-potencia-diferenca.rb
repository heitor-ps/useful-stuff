def contadorPrimos(j)
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
     
        #os números primos são armazenados na variavel resultado
         n = 1;   
        resultado = [];
        counter = 0;
     while counter < j
        if isPrimo(n)!= false
       resultado<<isPrimo(n)
       n+=1
       counter+=1
      else n+=1
    end  
 end
    return resultado
 end
class Quadrados
    def initialize(number)
    @number = number;
    end

    #soma dos 5 primeiros primos deve ser 28;

    #quadrado dos 5 primeiros primos deve ser 

    def quadrado_da_soma()   
      i = 0;    
      soma = 0;        
      arrayPrimos = [];       
      arrayPrimos = contadorPrimos(@number)        
        while i < arrayPrimos.size
         soma += arrayPrimos[i]
         i+=1        
        end
       return soma*soma         
    end

    def soma_dos_quadrados()
      i = 0;
      soma = 0;
      arrayPrimos = [];
      arrayPrimos = contadorPrimos(@number)

      while i < arrayPrimos.size
         soma += arrayPrimos[i]*arrayPrimos[i]
         i+=1         
      end

      return soma;

      
    end

    def diferenca()
      return  quadrado_da_soma() - soma_dos_quadrados()
    end

end
