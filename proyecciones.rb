
def proyeccion(file, x, y, z)

    ventas = open(file).read.chomp.split(',')
    
    ventas_int = ventas.map { |x| x.to_i }
    
    arreglo_nuevo = []
    
    veces = ventas_int.length
    
    veces.times do |e|
    
        if e >= x && e <= y 
            arreglo_nuevo.push(ventas_int[e] * z)
        else
            arreglo_nuevo.push(ventas_int[e])
        end
    end

    final_sum = [('%.2f' % arreglo_nuevo.sum)].join("\n")
    

    File.open("resultados.data", "a") do |file|
          file.print "#{final_sum}   "
    end

end


File.new("resultados.data", "w")

proyeccion('ventas_base.db', 0, 5, 1.1)

proyeccion('ventas_base.db', 6, 11, 1.2)

