# Demo to mix in a module in an external file （Ruby-specific mixins)
# Step 1: require_relative ...
# Step 2 include ...

require_relative "module_debug"

class Phonograph
	include Debug
	
	attr_reader:name
	
	def initialize(name)
		@name=name
		init
		initialize1("du", "gl")
	end
#...
end

class EightTrack
	include Debug
	
	attr_reader:name
	
	def initialize(name)
		@name=name
	end
#...
end

ph = Phonograph.new("WestEndBlues")
et = EightTrack.new("SurrealisticPillow")
puts ph.who_am_i? #=>"Phonograph(id:70266478767560):WestEndBlues"
puts et.who_am_i? #=>"EightTrack(id:70266478767520):SurrealisticPillow"