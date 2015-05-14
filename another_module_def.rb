#class AnotherModuleDef::MyClass < Object # illegal firstly defined
 module AnotherModuleDef
   class MyClass < Object
    def initialize(name = "Ruby")
	  @name = name
    end
  
    def say_hi
	  puts @name
    end
  end
end

include AnotherModuleDef
mc = AnotherModuleDef::MyClass.new
mc.say_hi