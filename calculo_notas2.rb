def higher_grade(arr)
    
    student_lenght = []
    student_lenght = arr.split(',')
    n = student_lenght.size
    student = []
    
    n.times do |i|
        if i != 0
            student.push(student_lenght[i].to_i)
        end
    end
        
    highest_grade = student.max
      
end

def nota_mas_alta(grades, grades2)

    i = 0
    veces = grades.length 
    totalnotas =[]

    veces.times do
     
     totalnotas.push ("la nota mas alta de #{grades2[i][0]} es: #{higher_grade(grades[i])}").split(',')
     i += 1
     end
    print totalnotas  
end



grades = open('notas.data').readlines
grades2 = grades.map { |x| x.split(',')}

print "\n"

nota_mas_alta(grades, grades2)

print "\n"



