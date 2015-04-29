# Created on Apr 28, 2015 Tue
# No keyword namespace available in Ruby. Use module, instead.
# namespace NsDemo
module NsDemo
  def test
    puts "hello, namespace!"
  end
end

include NsDemo
NsDemo::test