# nil is false, while 0 is true.
a = 0
b = nil
if a || b
  puts "hello ||"
end

if (a or b)
  puts "hello or"
end

if (a && b)
  puts "hello &&"
end
 
 if (a and b)
  puts "hello and"
 end