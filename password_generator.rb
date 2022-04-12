require "byebug"
def caps(password)
  upCase = "ABCDEFGHIJKLMNOPQRSTUVXYZ"
  upCase_size = upCase.length
  index = rand(0...upCase_size)
  password = password + upCase[index]
end

def small(password)
  lowCase = "abcdefghijklmnopqrstuvxyz"
  lowCase_size = lowCase.length
  index = rand(0...lowCase_size)
  password = password + lowCase[index]
end

def num(password)
  numbers = "0123456789"
  numbers_size = numbers.length
  index = rand(0...numbers_size)
  password = password + numbers[index]
end

def symb(password)
  symbols = "$&()*+[]@#^-_!?%{}[]|:;/?.>,<"
  symbols_size = symbols.length
  index = rand(0...symbols_size)
  password = password + symbols[index]
end

def random_password (alpha_size,nums_size,symb_size)
  len = alpha_size + nums_size + symb_size
  password = ""
  alpha = num = symb = 0
  while alpha < alpha_size || num < nums_size || symb < symb_size do
    choose = rand(0...3)
    case choose
    when 0
      unless alpha == alpha_size
        alpha = alpha + 1
        choice_between_cap_sma = rand(1..2)
        choice_between_cap_sma == 1 ? :password = caps(password) : :password = small(password)
      end
    when 1
      unless num == nums_size
        num = num + 1
        password = num(password)
      end
    when 2
      unless symb == symb_size
        symb = symb + 1
        password = symb(password)
      end
    end
  end
end

puts "Enter The Length of Combinations "
puts "The Length of Each Input Should Be Greater Than 7"

print "Alphabet "
alpha_size = gets.chomp.to_i
while alpha_size <= 7
  puts "Enter Integer Greater Than 7"
  alpha_size = gets.chomp.to_i
end

print "Numbers "
num_size = gets.chomp.to_i
while num_size <= 7
  puts "Integer Greater Than 7"
  num_size = gets.chomp.to_i
end

print "Symbols "
symb_size = gets.chomp.to_i
while symb_size <= 7
  puts "Integer Greater Than 7"
  symb_size = gets.chomp.to_i
end

ans = random_password(alpha_size,num_size,symb_size)

puts "============================================================="
puts ans
puts "============================================================="
