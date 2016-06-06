def check_age()
  puts "Please enter your age"
  age = gets.chomp
  return age.to_i
end
def determine(int_age)
  if int_age < 18
    puts "You cant do anything yet"
  elsif int_age >=	18 && int_age <21
    puts "You can smoke, and vote!"
  elsif int_age >=21 && int_age < 25
    puts "You can vote, smoke, and drink"
  else
    puts "You can vote, smoke, drink, and rent cars!"
  end
end

def yes_no(answer)
  puts answer
  text = gets.chomp
  return text
end

keep_asking = true
while keep_asking == true do
  int_age=check_age
  puts "You are #{int_age} years old!"
  determine(int_age)
  answer = yes_no ("Do you want to quit? (y/n)")
  keep_asking = false if answer == "y"
end
