# Знакомство с Ruby
#1
puts "Hello world!"

#2
puts "Приветсвую , #{ARGV[0]}!"

#3
puts "#{ARGV[0]} , какой твой любимый ЯП?"
answer = STDIN.gets.chomp
if ["Руби","руби","Ruby","ruby",].include? answer
	puts ":)"
else
	puts ":("
end

#4
puts "Введи команду Ruby :>"
rub_com = STDIN.gets.chomp
system "ruby -e \"#{rub_com}\""
# puts(2+2).to_i.even?

puts "Введи команду OC :>"
oc_com = STDIN.gets.chomp
system oc_com