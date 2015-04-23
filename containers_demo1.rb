# Ruby containers and iterations demo.
# March 23, 2015 Mon.

def array_list
	array1 = ['An', 'array','with','entries',3] # assign values directly
	# array1 = Array.new # OK
	# array1 = [] # OK
	array1[5] = 100
	puts array1.join(' ')

	
	# Array, block and iteration (loop)
	array1.each {|e| puts e}
	array1.each {|e| print "#{e}\n"}
	
	# Not good practice
	array1.each do |e|
		print "#{e}\n"
	end
	
end

# Hash: key - value
def hash_demo
	myh = Hash.new # method 1
	#myh = {} # method 2
	#myh = {"one" => 1, "two" => 2} # method 3
	#myh = {one: 1, two: 2} # save as the above line # method 4
	myh[:one] = 1
	myh[:two] = 'hello, ruby'
	
	i = 0
	myh.each do |k, v|
		puts "#{i}"
		puts "myh[#{k}] = #{v}"
		i += 1
	end
end

# Calls the method
array_list
hash_demo

puts ""
puts '--- How block is called ---'
def call_block(name = "dby")
  puts "Start of method"
  puts "Hello, #{name}"
  yield
  yield
  puts "End of method"
end

def return_value
	i = 150
end

call_block {puts "hello, block"}
call_block('Tom') {puts "hello, ruby"}

# and more than one argument is allowed (Range)
sum = 0
 sum = (0..100).inject(0) do | result, entry |
	result + entry
	#puts "result = #{result}, entry = #{entry}"
end
puts sum

puts return_value