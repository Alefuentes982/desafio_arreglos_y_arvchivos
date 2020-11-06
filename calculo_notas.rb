
def higher_grade(arr)
    print arr
    print "\n"
    student_lenght = []
    
    student_lenght = arr.split(',')
    
    n = student_lenght.size
    
    student = []
    n.times do |i|
        if i != 0
            student.push(student_lenght[i].to_i)
        end
    end
    
    #print arr
    print "\n"
    highest_grade = student.max
    highest_grade
end


i = 0
grades = open('notas.data').readlines
grades2 = grades.map { |x| x.split(',')}

print "\n"

veces = grades.length 

veces.times do
 print "\n"
 puts "la nota mas alta de #{grades2[i][0]} es: #{higher_grade(grades[i])}"
 print "\n"
 i += 1
 end