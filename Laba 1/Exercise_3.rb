# Список
# 1
def array_min(array)
  min = 100
  for item in array do
    if min > item.to_i  then
      min = item.to_i 
    end
  end
  puts "Мин элем = #{min}"
end

def array_max(array)
  max = 0
  for item in array do
    if max < item.to_i  then
      max = item.to_i 
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
  op = 1
  for item in array do
    op *= item.to_i
  end
  puts "Произв элем = #{op}"
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
  str = STDIN.gets.chomp
  while str != ''
    arr.push str.to_i
    str = STDIN.gets.chomp
  end
  main(arr,x)
end

def main(array,x)
  case x
  when 1
    puts "Ваш метод :> Минимальный элем "
    array_min(array)
  when 2
    puts "Ваш метод :> Максимальный элем "
    array_max(array)
  when 3
    puts "Ваш метод :> Сумма элементов "
    array_sum(array)
  when 4
    puts "Ваш метод :> Произведение элементов "
    array_op(array)
  end
end

# 2
x = ARGV[0].to_i
y = ARGV[1].to_i

case y
when 1
  puts "Считываем с клавы"
  clava(x)
when 2 
  puts "Считываем с файла"
  puts "Пропишите путь к файлу :>"
  path = STDIN.gets.chomp
  file(x,path)#внутри путь должен лежать
end