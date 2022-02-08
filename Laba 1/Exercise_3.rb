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
    sum += item
  end
  puts "Сумма элем = #{sum}"
end

def array_op(array)
  op = 0
  for item in array do
    op *= item
  end
  puts "Произв элем = #{щз}"
end

def main(array,y)
  case y
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

puts"Ваш массив:>"
array = [1,2,3,4,5]

for item in array do
  puts item
end

puts "Выбирайте чё хотите :>"

y = gets.chomp.to_i
main(array,y)