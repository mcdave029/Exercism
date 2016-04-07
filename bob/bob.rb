class Bob
	def hey(s)
		if s.length == 0 || s.gsub(/\s/,"").length == 0
			'Fine. Be that way!'
		elsif s.upcase == s && s.length > 7
			'Whoa, chill out!'
		elsif s[-1] == "?"
			'Sure.'
		else
			'Whatever.'
		end
	end
end