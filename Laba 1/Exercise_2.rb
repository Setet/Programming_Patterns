# Алгоритмы работы с числами и циклы
#1
def digits_sum(x)
	q=10
	sum = 0
	while x > 0
		sum += x % q
		x /= q
	end
	puts "Сумма = #{sum}"
end

#2
def digits_max(x)
	max=0
	q=10
	while x > 0
		s = x % q
		if max<s then
			max=s
		end
		x /= q
	end
	puts "Максимум = #{max}"
end

def digits_min(x)
	min=9
	q=10
	while x > 0
		s = x % q
		if min>s then
			min=s
		end
		x /= q
	end
	puts "Минимум = #{min}"
end

def digits_op(x)
	q=10
	op = 1
	while x > 0
		op *= x % q
		x /= q
	end
	puts "Произведение = #{op}"
end

#3
def method_1(x)

end

def method_2(x)
q=10
	op = 1
	while x > 0
		if ((x % q)/5) < 1
			op *= x % q
		end
		x /= q
	end
	puts "Произведение,не делящихся на 5 = #{op}"
end

def method_3(x)

end

def Working_with_numbers(x)
	puts "Число = #{x}"
	#digits_sum(x)
	#digits_max(x)
	#digits_min(x)
	#digits_op(x)
	#method_1(x)
	method_2(x)
	#method_3(x)
end

Working_with_numbers(55523)