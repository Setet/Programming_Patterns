# Список
# 1
def array_min(array)
  min = 10
  for item in array do
    if min > item then
      min = item
    end
  end
  puts "Мин элем = #{min}"
end

def array_max(array)
  max = 0
  for item in array do
    if max < item then
      max = item
    end
  end
  puts "Макс элем = #{max}"
end

def array_sum(array)
  sum = 0
  for item in array do
    sum += item.to_i
  end
  puts "Сумма элем = #{sum}"
end

def array_op(array)
  op = 0
  for item in array do
    op *= item.to_i
  end
  puts "Произв элем = #{щз}"
end

def file(q,path)
  arr = []
 
  File.open(path, 'r') do |file|
    file.each_line { |x| arr.push(x)}
  end

  puts "Ваш список :>"
  for item in arr
    puts item
  end

  main(arr,q)
end

def clava(x)
  arr = [] 
  str = ''
  puts 'Вводите элементы списка: ' 
  str = gets.chomp
  while str != ''
    arr.push str.to_i
    str = gets.chomp
  end
  main(arr,x)
end

def main(array,x)
  case x
  when 1
    array_min(array)
  when 2
    array_max(array)
  when 3
    array_sum(array)
  when 4
    array_op(array)
  end
end

# 2
puts "Список методов :"
puts "1) Минимальная цифра числа\n"+
"2) Максимальная цифра числа \n"+
"3) Сумма цифр числа\n"+
"4) Произведение цифр числа \n"
puts "Выбирайте метод :>"
x = gets.chomp.to_i

puts "Откуда считать?"
puts "1) Клава \n"+
"2) Файл \n"
y = gets.chomp.to_i

case y
when 1
  clava(x)
when 2 
  puts "Пропишите путь к файлу :>"
  path = gets.chomp
  file(x,path)#внутри путь должен лежать
end