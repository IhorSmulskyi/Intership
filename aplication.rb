require './student'
require './university'
require './knowledge'
require './internship'

class Aplication
	s1 = Student.new("Andrew Kostenko", 50)
	s2 = Student.new("Julia Veselkina", 60)
	s3 = Student.new("Maria Perechrest", 80)
	u = University.new
	u.addStudent(s1)
	u.addStudent(s2)
	u.addStudent(s3)
	i = Internship.new(u.students)
	i.enroll
	puts"List of students:"
	u.students.each do |student|
	 	puts student.name
	 end
	 puts""
	 puts "List of internship's students:"
	 i.approved_students.each do |student|
	 	puts student.name
	 end	
end

