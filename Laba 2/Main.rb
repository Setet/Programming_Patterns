path = File.dirname(__FILE__) #путь к папке
require "#{path}/Department.rb"
require "#{path}/Department_list.rb"

# Считывание отделов из файла
def read_from_txt(file)
  file = File.new(file, "r")
  list_departments = [] # Список отделов
  for line in file.readlines
    component = line.chomp.split(';')

    list_departments.push(d = Department.new(component[0], component[1]))
    component[2].split(',').each{|x| d.duty_add(x)} # Добавили обязанности
  end
  file.close()
  list_departments
end

# Запись отделов в файл
def write_to_txt(file, list_departments)
  File.open(file, "w") do |f|
    list_departments.each{|x| f.puts("#{x.name};#{x.phone};#{x.duty_write_txt}")}
  end
end

# Вывод отделов из файла
def departments_info(list_departments)
  list_departments.each{|x| puts(x)}
end



def main
  #Department.rb------------------------------------------------------

  number="+79181311793"
  duty_name = "Устраивать резню"

  a=Department.new("Z",number,"работать")
  b=Department.new("X","+79181311794","не работать")
  c=Department.new("C","+79181311795","почти работать")

  puts a

  puts b.duty

  puts a.duty_add(duty_name)
  puts a

  puts a.duty_select(1)

  puts a.duty_delete
  puts a

  puts a.duty_select(0)

  puts a.get_text_sel_duty

  puts a.change_text_sel_duty("отдихать")

  #Department_list.rb------------------------------------------------------

  #q = ["Отдел продаж;+79234252522;Привлечение клиентов"]
  #w = "Отдел кадров;+74234252230;Расчет премии,Определение количество рабочих дней"
  #w_1 = "Отдел чилла;+75234252230;Чилл"

  #deps = Department_list.new(q)

  #deps.to_s

  #deps.add_note(w)

  #deps.choose_note(1)

  #deps.change_note(w_1)
  #puts deps.to_s

  #вопросик на счёт работы
  #puts deps.get_note

  #puts deps.delete_note
  #puts deps.to_s

  #С файликом работаем------------------------------------------------------

  departments = Department_list.initialize_txt("Department.txt")
  puts departments


  Department_list.write_to_txt("Department_write.txt")
end

if __FILE__ == $0
  main
end