class Department

  attr_accessor :name
  attr_reader :phone

  def initialize (name, phone, *duty)
  @name = name
  self.phone = phone
  @duty = duty
  @index_duty = -1 # Индекс выбранной обязанности
  end

  # Конструктор, который кушает строку(вопросик по правильности работы)
  def Department.read_line(line)
    component = line.chomp.split(';')
    new(component[0], component[1],component[2].split(','))
  end
  
  # Получение информации
  def to_s
    "Название: #{@name};\nТелефон : #{@phone}; \nОбязанности : \n#{duty}\n"
  end

  # Вывод всех обязанностей
  def duty
    s = ""
    @duty.each_index{|i| s += "#{i} - #{@duty[i]} \n"}
    s
  end

  # Добавить обязанность
  def duty_add(value)
    @duty.append(value)
  end

  # Выделить обязанность
  def duty_select(index)
    @index = index
  end

  # Удалить обязанность
  def duty_delete
    @duty.delete_at(@index)
    @index = -1
  end

  # Получить текст обязанности
  def get_text_sel_duty
    @duty[@index]
  end

  # Заменить текст выделенной обязанности
  def change_text_sel_duty(value)
    @duty[@index] = value
  end

  # Сэттэр
  def phone=(value)
    if self.class.verify_phone(value)
      @phone = value
    else raise ArgumentError.new("Номер телефона введен неверно!")
    end
  end

  # Метод класса для проверки номера телефона
  def self.verify_phone(phone)
    /^((\+7|7|8)+([0-9]){10})$/.match(phone).to_s == phone
  end

  # Вывод всех обязанностей в txt
  def duty_write_txt
    s = ""
    @duty.each_index{|i| s += "#{@duty[i]},"}
    s.chop
  end
end
