def russia_lang(text)
    text.split("").select{ |n| ( n>="а" || n>="А" )&&( n<= "я" || n<="Я" ) }.size
end

def eng_lang(text)
    q=text.split("").select{ |str| ( str>="A" )&&( str<="Z" ) }
end

def main
    puts "Выберите задание:
    3) Необходимо найти общее количество русских символов.
    8) Необходимо найти все используемые в ней строчные символы латиницы.
    16) Дана строка. Необходимо найти минимальное из имеющихся в ней целых чисел."
    my_method = gets.chomp
    puts "Текст: "
    text = gets.chomp

    case my_method
    when "3"
        puts russia_lang(text)
    when "8"
        puts eng_lang(text)
    when "16"
        puts russia_flag()
    else
        puts "Ошибка в выборе метода"
    end

end

main