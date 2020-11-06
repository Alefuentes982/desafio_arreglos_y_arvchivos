
def chart (arreglo)
    mayor = limite(arreglo)                     
    d = 2                                

    arreglo.each do |elem|                             
        grafico(elem.to_i, d, "|", "*") 
    end

    grafico(mayor, d, ">", "-")            

    c = 0                  
    print " "

    mayor.times do |i|
        if i > 9               
            c += 0.95       
        end 
        print " " * ( (d - 1) + c )    
        print (i + 1)          
    end
    print "\n\n\n"
end

##################################################

def limite(arreglo)
    max = 0
    arreglo.each do |elem|
        if (max <= elem.to_i)
            max = elem.to_i
        end
    end
    max
end

def grafico (largo, elemento, a, b)
    c = 0                    
    print a
    largo.times do |i|        
        if i > 9                 
            c += 1           
        end                      
        print b * ( elemento + c )   
    end                                           
    print "\n"                                    
end

##################################################

chart([5,3,2,5,10])

