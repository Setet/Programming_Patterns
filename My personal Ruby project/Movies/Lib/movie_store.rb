require 'yaml/store'

class MovieStore

	# при инициализации созадём объект ямл стора для чтения/записи
	# кушаем название файла кстати
	def initialize(file_name)
		@store = YAML::Store.new(file_name)
	end

	# метод возвращает нам объект movie по ключу
	def find(id)
		@store.transaction do
			@store[id]
		end
	end

	# метод для вывода названий всех фильмов что у нас есть в БД
	def all
		@store.transaction do
			@store.roots.map { |id| @store[id] }
		end
	end

	# метод для записи фильма
	def save(movie)
		@store.transaction do
			unless movie.id
				highest_id = @store.roots.max || 0
				movie.id = highest_id + 1
			end
			@store[movie.id] = movie
		end
	end

	# метод для изменения данных о фильме
	def change(movie)
		@store.transaction do
			@store[movie.id] = movie
		end
	end

	# метод для удаления фильма
	def delete(movie)
		@store.transaction do
			@store.delete(movie.id)
		end
	end
end