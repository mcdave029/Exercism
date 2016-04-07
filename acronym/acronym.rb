class Acronym
	VERSION = 1
	def self.abbreviate(s)
		string = ""
		s.gsub(/\W/," ").split.each do |t|
			ns = t.gsub(/[a-z]/,"")
			string += (ns.length == 2 ? ns : t[0].upcase).to_s
		end
		string
	end
end