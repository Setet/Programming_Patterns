class Department

    attr_accessor :name, :contact_phone

    @duty_list = Array.new

    def initialize(name, contact_phone, duty_list = nil)
        self.name = name
        self.contact_phone = is_phone_number?(contact_phone)
        @duty_list = duty_list 
        self.main_duty = if duty_list.is_empty? then -1 else 0
    end

    def to_s
        "Депортамент \"#{name}\" \nТелефон: #{contact_phone} \n#{show_all_dutyes}\n#{main_duty_show}"
	end

    def add_duty(duty)
        @duty_list.push(duty)
        main_duty = @duty_list.size - 1
    end

    def delete_duty
        @duty_list.delete_at(@main_duty)
        main_duty -= 1
    end

    def show_all_dutyes
        if @duty_list.empty?
            "Должностей в департаменте нет"
        else
            "Должности в депортаменте следующие: #{@duty_list.join(", ")}"
        end
    end

    def set_main_duty(duty)
        @duty_list[@main_duty] = duty
    end

    def main_duty
        @duty_list[@main_duty]
    end

    def is_phone_number?(my_phone)
       if my_phone.match?(/[+][7][0-9]{10}/)
           true
       else 
           false
       end
    end
end

