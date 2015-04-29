# Module Debug mixes in class Phonograph and EightTrack
# who access the module's method! (v.s. multiple inhertance)

module Debug
  def who_am_i?
    "#{self.class.name} (\##{self.object_id}): #{self.to_s}"
  end
end


<<<<<<< HEAD
class Phonograph	< Object
	include Debug
=======
class Phonograph  
  include Debug
>>>>>>> 0a0656c2749571981341750e0ade0b8e32402d44

  attr_accessor :str
  
  def initialize(name)
    self.str = name
  end

  def to_s
    return str
  end
end


class EightTrack
  include Debug
  
  attr_accessor :str
  
  def initialize(name)
    self.str = name
  end

  def to_s
    return str
  end

end

ph = Phonograph.new("West End Blues")
et = EightTrack.new("Surrealistic Pillow")
puts ph.who_am_i? #"Phonograph (#935520): West End Blues"
puts et.who_am_i? #"EightTrack (#935500): Surrealistic Pillow"
