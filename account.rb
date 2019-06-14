puts "WHAT IS YOUR NAME?"

@file="data/#{@name}.balance"
@name=gets.chomp
@balance=File.exists?(@file) ? IO.read(@file).to_i : 0

puts "
  Welcome, #{@name}!"


puts "--"*21
puts "Your balance is $#{@balance}"
puts "--"*21
puts "Type a positive or negative number
  to DEPOSIT or WITHDRAW from your account."
puts " Type 'end' to exit."

until @value==0
@value=gets.chomp.to_i
@balance=@balance+@value
  puts "  Your new balance is $#{@balance}."
end

IO.write@file, @balance

puts "--"*21
puts"Goodbye, #{@name}!!"
