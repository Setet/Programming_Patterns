def shuffle_text(text)
    text.split("").shuffle.join
end

def wtf_text(text)
    text.split.count{|i| i.size.even?}
end

def russia_flag()
    s = ["синий","белый","красный"]
    s.sort.sort_by{ |i| i.size }
end

def main
    puts "Выберите задание:
    3) Перемешать все символы строки в случайном порядке.
    8) Посчитать количество слов с четным количеством символов.
    16) Дан массив в котором находятся строки белый, синий и красный в случайном порядке. Необходимо упорядочить массив так,чтобы получился российский флаг."
    my_method = gets.chomp
    puts "Текст: "
    text = gets.chomp

    case my_method
    when "3"
        puts shuffle_text(text)
    when "8"
        puts wtf_text(text)
    when "16"
        puts russia_flag()
    else
        puts "Ошибка в выборе метода"
    end
end

main