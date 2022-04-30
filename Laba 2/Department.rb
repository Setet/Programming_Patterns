require_relative 'Post_list.rb'
require_relative 'Post.rb'

class Department
    attr_accessor :name 
    attr_reader :phone_number

    def initialize(name,phone_number,duties=Hash.new,selected_duty=nil,post_list=Post_list.new)
        self.name= name
        self.phone_number= phone_number
        @duties = duties
        @selected_duty = selected_duty
        @post_list = post_list
    end

    def phone_number=(phone_number)
        if not Department.is_phone_number?(phone_number)
            raise "Некорректный номер телефона"
        end
        phone_number.gsub!(/^8/, "7")
        @phone_number = phone_number.delete("- )(+")
    end

    # Получение информации
    def to_s()
        department_str="#{@name}|#{@phone_number}"
        @duties.keys.each{|duty| department_str+="\n#{duty}:#{@duties[duty]}"}
        department_str+= @post_list.to_s
        department_str
    end
    
    # Получение информации,но в урезанной форме
    def to_s_short()
        department_str="#{@name}|#{@phone_number}"
    end
    
    # Вывод всех обязанностей
    def Department.get_dep_str(dep)
        dep = dep.split("\n")
        dep_name,phone_number=dep[0].split("|")
        duties=Hash.new
        dep[1..dep.size].each do|duty| 
            duty,spec = duty.split(":")
            duties[duty]=spec
        end
        Department.new(dep_name,phone_number,duties)
    end

    # Добавить обязанность
    def add_duty(duty,specification)
        @duties[duty] = specification
    end

    # Выделить обязанность
    def select_duty(duty)
        if @duties.has_key?(duty)
            @select_duty = duty
        else
            raise "Нет обязанности"
        end
    end

    # Удалить обязанность
    def delete_duty()
        @duties.delete(@select_duty)
        @select_duty = @duties.keys[0]
    end

     # Получить текст обязанности
    def get_specification()
        @duties[@select_duty]
    end

    # Заменить текст выделенной обязанности
    def change_specification(specification)
        @duties[@select_duty] = specification
    end

    # Получить обязанности
    def get_duties()  
        @duties.keys.join(" | ")
    end

    # Добавить должность
    def add_post(post_name,salary,vacancy)
        @post_list.add_note(Post.new(@name,post_name,salary,vacancy))
    end

    # Выбрать должность
    def select_post(index)
        @post_list.choose_note(index)
    end

    # Возвращает выбраную должность
    def get_selected_post()
        @post_list.get_note
    end

    # Удалить должность
    def delete_post()
        @post_list.delete_note
    end


    def change_post(post_name,salary,vacancy)
        @post_list.change_note(Post.new(@name,post_name,salary,vacancy))
    end

    # Получить вакансию
    def get_vacancies()
        @post_list.get_vacancies
    end

    # Получить номер вакансий
    def get_number_vacancies()
        self.get_vacancies.length
    end

    # Получть все должности
    def get_all_posts()
        @post_list.post_list
    end

    # Метод класса для проверки номера телефона(переделал,она не моя)
    def self.is_phone_number?(phone_number)
        return phone_number.scan(/^(\s*)?(\+?7|8)([(\- ]?\d{3}[)\- ]?)(\d{3}[\- ]?\d{2}[\- ]?\d{2}|\d{2}[\- ]?\d{3}[\- ]?\d{2})(\s*)?$/).length == 1
    end
end