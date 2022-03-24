current_path = File.dirname(__FILE__)
require "#{current_path}/Department.rb"

def read_from_txt(path)
    my_data = IO.read path
    dept_list = Array.new
    sub_data = Array.new
    n = 0
    my_data.split("\n").each do |i| 
        if i != "---"
            sub_data[n] = i 
            n+=1
        else 
            n = 0
            dept_list.push(Department.new(sub_data.shift, sub_data.shift, sub_data.shift.split("/")))
        end
    end
    dept_list
end

puts read_from_txt("C:\\Users\\Setet\\Desktop\\Laba_2\\Department.txt")