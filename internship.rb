class Internship
	attr_reader :approved_students

	def initialize(students)
		@students = students
		@approved_students = []
	end

	def enroll
		@students.each do |student|
			if	student.knowledge.applicable_for_intenrship? 
				@approved_students.push(student)
			end
		end
	end
end