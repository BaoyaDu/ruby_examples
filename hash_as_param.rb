# Hash object as param 
# 2013/08/27 11:04:53

#~ def hash_as_param(options = {}) # OK
def hash_as_param(name, age, options = Hash.new) # OK
	puts("name = #{name}, age = #{age}")
	options.each {|key, value| puts "The #{key} is #{value}" }
end

hash_as_param :malei, 28, :precision => 8, :scale => 2, :default => 0

h1 = Hash.new
h1[:action] = 'show' 
h1[:id] = "lijia"
hash_as_param("yr", 26, h1)

def test
  0.upto(5) do |i|
    puts "i = #{i}" 
  end	
end

test


def hash_test
  h = { precision: 8, scale: 2, default: 0 }
  #h.each{|key, value| puts "#{key}: #{value}," }
  
  h.each do |key, value|
	if key == :default
	  puts "default: 0"
	elsif
	  puts "#{key}: #{value},"
	end	
  end  
 
end

hash_test

