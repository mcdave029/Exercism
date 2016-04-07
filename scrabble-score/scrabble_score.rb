class Scrabble
	def lettervalues(s)
		s = s.nil? ? '' : s.gsub(/\s/,"")
		@value =	if s == ''
								0
							else
								score = 0
								s.split("").each do |asd|
									q = {
										1 => %w{A E I O U L N R S T},
										2 => %w{D G},
										3 => %w{B C M P },
										4 => %w{F H V W Y},
										5 => %w{K},
										8 => %w{J X},
										10 => %{Q Z}
									}
									q.each{|k,v| score += k if v.include?(asd.upcase)}
								end
								score
							end
	end
	def score
		@value
	end
	def self.score(s)
		new(s).score
	end
	def initialize s
		lettervalues(s)
	end
end