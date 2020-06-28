class RnaPolymerase  
  def stripTranslation(strip)
    result = "";  
      for i in 0..strip.size
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

  def transcribe(dna, beginning, ending)
    if(beginning.size <= 1|| ending.size <= 1 || dna.size <= 1)      
      return "Sequence not found"
    else
      checkVar = [];
      for j in 0..beginning.size
        if(beginning[0]==beginning[j])
          checkVar<<beginning[j]
        end        
      end 
      if(checkVar.size==beginning.size)
        return "Sequence not found"
      else
        #beginning's index must be lower than ending's
        if (dna.index(ending)<dna.index(beginning))
          endingAux = dna.index(ending);        
          endingAux += ending.size;
          firstEndingIndex = dna.index(ending,endingAux);

          #This second part is the same as seen on the "else" below with the
          #difference on endingIndex
          beginningIndex = dna.index(beginning);
          beginningIndex+=beginning.size;
          endingIndex = firstEndingIndex;
          endingIndex -= 1;
          stripForTranscription =  dna[beginningIndex..endingIndex];
          result = stripTranslation(stripForTranscription);
          return result   
        else
          beginningIndex = dna.index(beginning);
          beginningIndex+=beginning.size;
          endingIndex = dna.index(ending);
          endingIndex -= 1;            
          stripForTranscription =  dna[beginningIndex..endingIndex];
          result = stripTranslation(stripForTranscription);
          return result; 
        end         
      end
    end
  end
end
