class PhoneNumber
	def number
		@phone.gsub!(/\D/,"") if @phone.length < 15
		if /^\d{10}$|^\A1\d{10}$/.match(@phone)
			/^\d{11}$/.match(@phone) ? @phone.gsub(/\A1/,"") : @phone
		else
			'0000000000'
		end
	end

	def to_s
		"(#{number[0,3]}) #{number[3,3]}-#{number[6,4]}"
	end
	
	def area_code
		number[0,3]
	end

	def initialize(num)
		@phone = num
	end
end

# d = 10 good
# d = 11 gsub 1 use 10 digits good
# d < 10 bad
# d = 11 && first not 1 bad
# d > 11 bad