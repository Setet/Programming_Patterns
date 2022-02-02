# Алгоритмы работы с числами и циклы
#1
def digits_sum(x)
	q=10
	res = 0
	while x > 0
		res += x % q
		x /= q
	end
	puts "Сумма = #{res}"
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
	res = 1
	while x > 0
		res *= x % q
		x /= q
	end
	puts "Произведение = #{res}"
end

def Working_with_numbers(x)
	puts "Число = #{x}"
	#digits_sum(x)
	#digits_max(x)
	#digits_min(x)
	digits_op(x)
end

Working_with_numbers(1234)