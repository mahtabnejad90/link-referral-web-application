puts "Hello, please enter your name: "
name = gets.chomp

puts "Thanks for that #{name}. Now please enter your age: "

age = gets.chomp.to_i

puts "Can I confirm that your name is #{name} and you are #{age} old?"

confirm = gets.chomp

puts "#{confirm}"
