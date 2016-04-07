class Robot
	def name
		@name
	end
	
	def reset
		initialize
	end
	
	def generate
		a = ('A'..'Z').to_a.shuffle[0,2].join
		b = (0..9).to_a.shuffle[0,3].join
		a+b.to_s
	end

	def initialize
		@name = generate
	end
end