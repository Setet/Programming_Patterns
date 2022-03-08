class Department

    attr_accessor :name, :phone # определение методов для получения и установки значений @name @phone

    def initialize(name, phone)
        @name = name
        @phone = phone
    end

    def show_info
        puts "Name: \"#{@name}\" - Phone: #{@phone}"
    end
end

men_1 = Department.new("Setet", "+79106535487")
men_2 = Department.new("XyLiGaNchick[2007]", "+78914562389")

#сеттер – для записи.
men_1.name = "fghjk"
puts men_1.name

#геттер – для чтения.
a = men_1.phone
puts a

men_1.show_info
men_2.show_info