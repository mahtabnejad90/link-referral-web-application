5.downto(1){|i|puts "This is a countdown: #{i}"}

5.downto(0) do |currentNumber|
  puts "This is the do end block method countdown: #{currentNumber}"
  puts "Yay!"
end
puts "Ready to Go!"


1.upto(10) {|i|puts "We're going upto 10 #{i}"}

1.upto(10) do |goUpto|
  puts "This string going up to 10 #{goUpto}"
  puts "Done"
end
