3.times {
    |count| puts "This is a times block #{count}"
}

5.times do |count|
  puts "We are currently on loop number #{count}"
  puts "This is the first process"
  puts "This is the second process"
end


10.times do |threeMultiples| #count start at 0
  puts "multiples of three"
  puts "#{3 * (threeMultiples + 1)}"
end

10.times{ |threeMultiples|puts "#{3 * (threeMultiples + 1)}" }
