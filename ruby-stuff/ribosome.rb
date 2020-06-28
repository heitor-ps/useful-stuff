class Ribosome
    def stripTranslation(strip)
      result = "";  
        for i in 0..strip.size
          if (strip[i]=="U")
            result += "A"
          end
  
          if(strip[i]=="A")
            result += "U"
          end
    
          if(strip[i]=="T")
            result+="A"
          end
    
          if(strip[i]=="G")
            result += "C"
          end
    
          if(strip[i]=="C")
            result += "G"
          end  
        end
    return result
    end  
  
    def translate(rna_messenger)   
      rnaTransporter = stripTranslation(rna_messenger);
      rnaTransporterArray = [];
      i = 0;
      j = 0;
      while i < rnaTransporter.size
        rnaTransporterArray[j]=rnaTransporter[i..(i+2)]
        i += 3
        j += 1
      end
  
      result = "";    
      for l in 0..rnaTransporterArray.size     
        if rnaTransporterArray[l] == "UCA"
          result += "aa1"       
        end
  
        if rnaTransporterArray[l] == "AAC"
          result += "aa2"
        end
  
        if rnaTransporterArray[l] == "UUU"
          result += "aa3"
        end
  
        if rnaTransporterArray[l] == "AAA"
          result += "aa4"
        end
  
        if rnaTransporterArray[l] == "AUC"
          result += "aa5"       
        end
  
        if rnaTransporterArray[l] == "CCA"
          result += "aa6"
        end
  
        if rnaTransporterArray[l] == "GGU"
          result += "aa7"
        end
  
        if rnaTransporterArray[l] == "GCC"
          result += "aa8"
        end    
      end
  
      sizeOfSource = rnaTransporter.size;
      sizeOfResult = result.size   
      if sizeOfResult == sizeOfSource
        k = 3;
        while k < result.size       
          result.insert(k,"-")
          k+=4
        end
        return result
      else return "Translation aborted"
      end
    end
end
  