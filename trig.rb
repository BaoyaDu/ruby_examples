# trig: tri-, trigeometry , trigonometric function
module Trig
	PI = 3.1415926
	
	# Difference
	#def sin(x = 1)
	def Trig.sin(x = 1)
		puts "The num is #{x}"
	end
	
	def Trig.cos(x = 2)
	# def cos(x = 2)
		puts "The num is #{x}"
	end
	
	def say_hi()
	  puts "hi, module."
	end
	
end

# Keyword self & class methods
class MyClass01
	# Class method
	# def MyClass01.hi
	def self.hi # same as the above
		puts "Hi, I'm mehtod MyClass01.hi"
	end
end

# Before including, the following are legal
# Outputs the costant PI in the module
puts "PI = #{Trig::PI}"

# Compares the difference betweeng calling sin (sine) and cos (co-cosine)
# Calls the method directly from the module
Trig::sin
Trig.sin

# After including, the following are legal
include Trig
Trig::say_hi
Trig.say_hi

# Ruby-specific mixin
Trig::cos

# Uses class MyClass01 (class mehtod)
MyClass01.hi
# Cannot call the class method with an object (v.s. C++)
# mc = MyClass01.new
# mc.hi
