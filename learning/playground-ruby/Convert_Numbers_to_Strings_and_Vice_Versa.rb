str = "58"

p "#{str} is a: #{str.class} class"

p str.to_i.class

#does not overwrite the original str object when converted into integer
p str

p str.to_f
p str.to_f.class


number = 10

p number.class
p number.to_s
p number.to_f
p number.to_s.class
p number.to_f.class



pi = 3.14

#will remove the decimal component of the variable object
p pi.to_i.class
p pi.to_i

p pi.to_s

p "5".to_s
p 5.to_i
p 99.99.to_f
p "5".to_s.class
p 5.to_i.class
p 99.99.to_f.class
