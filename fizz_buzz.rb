def fizz_bizz(number)
  a = number % 15
  return "Fizz Bizz" if a == 0
  b = number % 3
  return "Fizz" if b == 0
  c = number % 5
  return "Buzz" if c ==0
  number.to_s
end

puts "数字を入力してください"

input = gets.to_i

puts "結果は..."

puts fizz_bizz(input)