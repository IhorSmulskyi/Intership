class University
	attr_reader :students

	def initialize
		@students = []
	end

	def addStudent(student)
		@students.push(student)
	end
end



