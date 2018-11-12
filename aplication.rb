require './student'
require './university'
require './knowledge'
require './internship'

class Source
	def getStudents
		raise NotImplementedError, 'You must implement the getStudents method'
	end
end

class DBSource < Source
	def getStudents
	end
end

class FileSource < Source
	def getStudents
	end
end

class TypedSource < Source
	def getStudents   
		listOfStudents = []
	    listOfStudents.push(Student.new("Andrew Kostenko", 50))
	    listOfStudents.push(Student.new("Julia Veselkina", 60))
	    listOfStudents.push(Student.new("Maria Perechrest", 80))
	    listOfStudents
	end
end

	s = TypedSource.new
	u = University.new
	u.addStudent(s.getStudents)
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


