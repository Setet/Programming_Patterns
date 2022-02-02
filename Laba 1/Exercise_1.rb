# Знакомство с Ruby
#1
puts "Hello world!"

#2
puts "Wake the fuck up, #{ARGV[0]}!"

#3
puts "Какой твой любимый ЯП, #{ARGV[0]}?"
answer = STDIN.gets.chomp
if ["Руби","руби","Ruby","ruby",].include? answer.downcase
	puts ":)"
else
	puts ":("
end

#4
puts "Введи команду Ruby, #{ARGV[0]} :"
rub_com = STDIN.gets.chomp
system "ruby -e \"#{rub_com}\""

puts "Введи команду OC, #{ARGV[0]} :"
oc_com = STDIN.gets.chomp
system oc_com