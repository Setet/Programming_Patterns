# Знакомство с Ruby
#1
puts "Hello world!"

#2
puts "Как тебя звать?"
name = gets.chomp
puts "Приветсвую , #{name}!"

#3
puts "Какой твой любимый ЯП?"
answer = gets.chomp
if ["Руби","руби","Ruby","ruby",].include? answer
	puts ":)"
else
	puts ":("
end

#4
puts "Введи команду Ruby :>"
rub_com = gets.chomp
system "ruby -e \"#{rub_com}\""

puts "Введи команду OC :>"
oc_com = gets.chomp
system oc_com