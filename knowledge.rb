class Knowledge
	MAX_SCORE = 100

	def initialize(score)
		@score = score
	end

    def applicable_for_intenrship?
   		 @score > (MAX_SCORE/2)
    end
end