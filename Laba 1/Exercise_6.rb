def sort_text_by_lenght(text)
    text.split("\n").sort_by(&:length)
end

def sort_text_by_count_of_words(text)
    text.split("\n").sort_by{|x| x.count(" ")}
end


def main
    puts "Выберите задание:
    1) Сортировать строки по длине.
    2) Сортировать строки по кол-ву слов."
    my_method = gets.chomp
    text = IO.read "C:\\Users\\Setet\\Desktop\\text.txt"

    puts "Путь: #{text}"

    case my_method
    when "1"
        puts sort_text_by_lenght(text)
    when "2"
        puts sort_text_by_count_of_words(text)
    else
        puts "Ошибка в выборе метода"
    end

end

main