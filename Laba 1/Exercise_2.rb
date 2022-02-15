# Алгоритмы работы с числами и циклы
#1
def digits_sum(x)
	q = 10
	sum = 0
	while x > 0
		sum += x % q
		x /= q
	end
	puts "Сумма = #{sum}"
end

#2
def digits_max(x)
	max = 0
	q = 10
	while x > 0
		s = x % q
		if max < s then
			max = s
		end
		x /= q
	end
	puts "Максимум = #{max}"
end

def digits_min(x)
	min = 9
	q = 10
	while x > 0
		s = x % q
		if min > s then
			min = s
		end
		x /= q
	end
	puts "Минимум = #{min}"
end

def digits_op(x)
	q = 10
	op = 1
	while x > 0
		op *= x % q
		x /= q
	end
	puts "Произведение = #{op}"
end

#3
def method_1(x)
	i = 2
	while x > 1
		if x % i == 0
			x /= i
		else
			i += 1
		end
	end
	puts "Максимальный простой делитель = #{i}"
end

def method_2(x)
	q = 10
	op = 1
	while x > 0
		if ((x % q)/5) < 1
			op *= x % q
		end
		x /= q
	end
	puts "Произведение,не делящихся на 5 = #{op}"
end

def method_3_1(x)
	max = 0
	u = 4
	while u < x
		if x % u == 0
			if u % 2==1
				if max<u then
					max = u
					#puts "Все непростые делители числа = #{max}"
				end
			end
		end
	u+=1
	end
	return max
end

def method_3_2(x)
	q = 10
	op = 1
	while x > 0
		op *= x % q
		x /= q
	end
	return op
end

def method_3(a,b)
	if a % b == 0
    	puts "НОД из двух приколов = #{b}"
  	else
    	method_3(b, a % b)
  	end
end

def Working_with_numbers(x,y)
	case y
	when 1
		puts "Ваш метод :> Сумма цифр числа "
  		digits_sum(x)
	when 2
		puts "Ваш метод :> Максимальная цифра числа "
  		digits_max(x)
	when 3
		puts "Ваш метод :> Минимальная цифра числа "
  		digits_min(x)
	when 4
		puts "Ваш метод :> Произведение цифр числа "
  		digits_op(x)
  	when 5
  		puts "Ваш метод :> Максимальный простой делитель числа "
  		method_1(x)
	when 6
		puts "Ваш метод :> Произведение цифр числа,не делящихся на 5 "
  		method_2(x)
	when 7
		puts "Ваш метод :> НОД максимального нечетного непростого делителя числа и произведения цифр данного числа "
  		a = method_3_1(x)
		b = method_3_2(x)
		# puts ниже,чисто для наглядности
		puts "Нечетный непростой делителя числа = #{a}\n"+
		"Произведение цифр числа = #{b}"
		method_3(a,b)
	else
		puts "Hello world"
	end	
end

puts "Ваше число число :> #{ARGV[0]}"
x = ARGV[0].to_i
y = ARGV[1].to_i
Working_with_numbers(x,y)