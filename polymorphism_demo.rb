# Encapsulation: class - data, operation
# Inheritance: single and multiple
# Polymorphism: overloading, overwriting 

# Template
# Abstract class
# Static & dynamic binding

# Polymorphism demo
# Case 1: overloading
# Case 2: overwriting

class MyPoly
  # attr_writer :a, :b, :c # setter
  # attr_reader :a, :b, :c # getter
  attr_accessor :a, :b, :c # setter & getter
  
  def initialize(a = 0, b = 0, c = 0)
    @a = a
	@b = b
	@c = c
  end
    
 # Overloading through default argument values
  def do_something(a = 1, b = 2, c = 3)
    @a = a
	@b = b
	@c = c    
    print_abc
  end
  
  def print_abc
    puts "a, b, c = #{@a}, #{@b}, #{@c}"
  end
  
  # Setter method
  # def a=(a)
    # @a = a
  # end
  
  # Getter method
  # def a
    # @a
  # end
end

class MyPolyII < MyPoly
  def initialize()
  end

 # Overwriting
  def do_something(a = 1, b = 2, c = 3)
    puts "Hello, a, b, c = #{a}, #{b}, #{c}"
    super # call the same method of the supercalss
  end  
end

mp = MyPoly.new # initialize
# mp.do_something # !attenting
mp.do_something(10)
mp.do_something(7, 8)

mp.do_something("Du", 100)
mp.do_something("Du", "Baoya")

mp2 = MyPolyII.new # initialize
mp2.do_something("Du", 150) # dynamic binding

mp2.a = 250 # writer = setter
mp2.print_abc