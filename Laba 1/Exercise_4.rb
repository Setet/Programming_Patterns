def global_max(arr,q)
    arr[q] == arr.max
end

def local_min(arr,q)
    #c = m[i] < m[i-1]
    #d = m[i] < m[i+1]
    #c == d
    #кривое говно,поэтому сделал ниже норм(если c и d = false, то их сравнение c == d выдаст true. Нужно писать c && d)
    a=arr[q]
    b=arr[q+1]
    c=arr[q-1]
    (a<b)&&(a<c)
end

def cyclic_shift(arr)
    a=arr.shift
    arr.push(a)
end

def even_odd_indices(arr)
    arr.each_with_index do |elem, index|
        puts elem if (index % 2) == 0
    end
    puts"---------------"
    arr.each_with_index do |elem, index|
        puts elem if (index % 2) != 0
    end
end

def count_words(words)
  words.each_with_object(Hash.new 0) do |word, counter|
    counter[word] += 1
  end
end
 
def print_counts(words,i)
    l2=[]
  count_words(words).each do |word, count|
    l2[word] = count
  end
  #puts l2 
  l2.delete_at(0)
  puts "L2 = #{l2[i]}"
end
 


def l1_and_l2(arr,i)
    l1 = []
    l1 = arr.uniq

    print_counts(arr,i)
end

def main

    puts "Выберите задание:
    3) Определить является ли элемент по указанному индексу глобальным максимумом.
    15) Определить является ли элемент по указанному индексу локальным минимумом.
    27) Осуществить циклический сдвиг элементов массива влево на одну позицию.
    39) Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.
    51) Для введенного списка построить два списка L1 и L2, где элементы L1 это неповторяющиеся элементы исходного списка, а элемент списка L2 с
номером i показывает, сколько раз элемент списка L1 с таким номером повторяется в исходном.:>"
    my_method = gets.chomp

    arr = get_arr

    case my_method
    when "1"
        puts "Натуральное число:>"
        q = gets.chomp.to_i
        puts global_max(arr,q)
    when "2"
        puts "Натуральное число:>"
        q = gets.chomp.to_i
        puts local_min(arr,q)
    when "3"
        puts cyclic_shift(arr)
    when "4"
        puts even_odd_indices(arr)
    when "5"
        puts "i :>"
        i = gets.chomp.to_i
        puts l1_and_l2(arr,i)
    else
        puts "Ошибка, такого метода нет!!!"
    end
end

def file(path)
  arr = []
 
  File.open(path, 'r') do |file|
    file.each_line { |x| arr.push(x)}
  end

  puts "Ваш список :>"
  for item in arr
    puts item
  end

  arr
end

def clava()
    arr = [] 
    str = ''
    puts 'Вводите элементы списка: ' 
    str = gets.chomp
    while str != ''
        arr.push str.to_i
        str = STDIN.gets.chomp
    end

    arr
end

def get_arr()
    puts "Выберите откуда считать
    1) Клава
    2) Файл"
    y = gets.chomp.to_i
    case y
    when 1
        puts "Считываем с клавы"
        clava()
    when 2 
        puts "Считываем с файла"
        puts "Пропишите путь к файлу :>"
        path = gets.chomp
        file(path)
    end
end

main