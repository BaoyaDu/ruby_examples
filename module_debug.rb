
module Debug
	def init
		puts "I'm method method init"
	end
	
	def initialize1(a = "hi", b = "there")
		puts "I'm method method initialize"	
	end
	

	def who_am_i?
		"#{self.class.name}(id:#{self.object_id}):#{self.name}"
	end
end
