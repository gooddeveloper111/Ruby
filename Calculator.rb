def get_int_values
  [gets, gets].map{ |s| s.chomp.to_i }
end

puts "Do you want to [add], [multiply], or [subtract]?"
choice = gets.chomp

case choice.downcase
when 'add'
  puts "Please enter the numbers you wish to add"
  operator = :+

when 'subtract'
  puts "Please enter the numbers you want to subtract"
  operator = :-

when 'multiply'
  puts "Please enter the numbers you want to multiply"
  operator = :*

end

answer = get_int_values.inject(operator)
puts "The answer is... #{ answer }"
