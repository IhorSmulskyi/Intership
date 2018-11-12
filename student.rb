class Student
	attr_accessor :name, :knowledge

	def initialize(name, score)
		@name = name
		@knowledge = Knowledge.new(score)
	end
end

