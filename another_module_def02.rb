require_relative 'another_module_def'

class AnotherModuleDef::MyClass2 < Object # legal to append to an existing module
  def initialize(name = "Ruby2")
    @name = name
  end
  
  def say_hi
    puts @name
  end
end

#include AnotherModuleDef

mc = AnotherModuleDef::MyClass2.new
mc.say_hi