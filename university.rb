class University
	attr_reader :students

	def initialize
		@students = []
	end

	def addStudent(student=[*a])
		@students.concat student
	end
end



