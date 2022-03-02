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

def russia_lang(text)
    text.split("").select{ |n| ( n>="а" || n>="А" )&&( n<= "я" || n<="Я" ) }.size
end

def eng_lang(text)
    q=text.split("").select{ |str| ( str>="A" )&&( str<="Z" ) }
end

def min_lang(text)
    q=text.split("").select{ |str| ( str>="0" )&&( str<="9" ) }
    q.min
end

def main
    puts "Выберите задание:
    Дата:
    1) Работа с датой
    Строки(1)
    2) Перемешать все символы строки в случайном порядке.(3)
    3) Посчитать количество слов с четным количеством символов.(8)
    4) Дан массив в котором находятся строки белый, синий и красный в случайном порядке. Необходимо упорядочить массив так,чтобы получился российский флаг.(16)
    Строки(2)
    5) Необходимо найти общее количество русских символов.(3)
    6) Необходимо найти все используемые в ней строчные символы латиницы.(8)
    7) Дана строка. Необходимо найти минимальное из имеющихся в ней целых чисел.(16)"
    my_method = gets.chomp
    puts "Текст: "
    text = gets.chomp

    case my_method
    when "1"
        puts "Дата: "
        dat = gets.chomp
        puts date(dat)
    when "2"
        puts shuffle_text(text)
    when "3"
        puts wtf_text(text)
    when "4"
        puts russia_flag()
    when "5"
        puts russia_lang(text)
    when "6"
        puts eng_lang(text)
    when "7"
        puts min_lang(text)
    else
        puts "Ошибка в выборе метода"
    end

end

main