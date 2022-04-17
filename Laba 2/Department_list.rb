path = File.dirname(__FILE__) # Получили путь к папке
require "#{path}/Department.rb"

class Department_list

  # Конструктор
  def initialize(list_departments)
    @departments = list_departments
    @index = -1
  end

  # Добавления записи
  def add_note(department)
    @departments.push(department)
  end

  # Выделяем запись
  def choose_note(index)
    if @departments.length > index and index >= 0 then
      @index = index
    else raise ArgumentError.new("Индекс вышел за пределы массива!")
    end
  end

  # Заменяет запись
  def change_note(department)
    @departments[@index] = department
  end

  # Возвращает запись
  def get_note
    @departments[@index]
  end

  # Удалет запись
  def delete_note
    @departments.delete_at(@index)
    @index = -1
  end

  def to_s
    s = ""
    @departments.each_index{|i| s += "Отдел - #{i}\n#{@departments[i]}\n"}
    s
  end

  def Department_list.read_from_txt(file)
    file = File.new(file, "r")
    list_departments = [] 
    for line in file.readlines
      list_departments.push(Department.read_line(line))
    end
    file.close()
    new(list_departments)
  end


  def write_to_txt(file)
    File.open(file, "w") do |f|
      #вопросик на счёт последнего x
      @departments.each{|x| f.puts("#{x.name};#{x.phone};#{x.duty_write_txt}")}
    end
  end

end