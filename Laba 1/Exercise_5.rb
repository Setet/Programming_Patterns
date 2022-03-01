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

def date(text)
    text = text.split(" ")
    months = ["января", "февраля","марта","апреля","мая","июня","июля","августа","сентября","октября","ноября","декабря"]
    for i in (0..text.length) do
        if text[i].to_i > 0 && text[i].to_i <= 31 && months.include?(text[i+1]) && text[i+2].to_i >= 0
            puts "#{text[i]} #{text[i+1]} #{text[i+2]}"
        end
    end
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
date("10 января 2000 10 2 февраля 2222 ")