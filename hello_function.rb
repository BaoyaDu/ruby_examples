#!/usr/bin/ruby
#Jun. 12, 2009

def hello(programmer)
	puts "Hello #{programmer}"
end

# Creating a class is easy
class LoveRuby

	# Getter & setter
	attr_accessor :name
	
	# Constructor (private)
	def initialize(name = 'Cathy')
		@name = name # @name: instance variable
		puts "It is #{name}"
	end
	
	# Function with its default argument value
	def hello(programmer = "Brian")
		puts "Hello, #{programmer}"
	end
 
	# Defines a class method by prepending the class name
	def LoveRuby.say_hi
		puts "Hi, I'm a class method (vs C++ static function)"
	end

	# Defines another class method by prepending keyword self (vs C++ this)
	def self.say_hi2
		puts "Hi, I'm a class method, too"
		# Calls a class method from within this class method
		say_hi
		# or
		self.say_hi
		# or
		LoveRuby.say_hi
	end
end

# Inheritance
class LoveRubyJunior < LoveRuby

	attr_accessor :name1
	
	def initialize(name1='Junior')
		super
		#@name1=name1
		#puts "This is #{name1}" 
	end

end

hello('function')
hello('Barak Obama')

lr = LoveRuby.new
lr.hello
LoveRuby.say_hi # lr.say_hi  cannot work, different from C++
LoveRuby.say_hi2 # lr.say_hi2  cannot work, too

#lr2 = LoveRuby.new("Baoya")
#lr2 = LoveRuby.new
#puts "My name is #{lr2.name}"

# Subclasses
#lrj = LoveRubyJunior.new
#puts "name1 is #{lrj.name1}"

#puts "abc"

 LoveRubyJunior.new


