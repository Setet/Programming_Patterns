# конектим сенатора(я его так называть буду,отстаньте)
require 'sinatra'
# конектим класс муви с полями
require 'movie'
# конектим класс с методами для муви
require 'movie_store'


store = MovieStore.new('movies.yml')

# для вывода на мейн морду всех фильмов
get('/movies') do
	@movies = store.all
	erb :index
end

# вывод формы для записи новых фильмов
get('/movies/new') do
	erb :new
end

# запись нового фильма и его запись ы БД
post('/movies/create') do
	@movie = Movie.new
	@movie.title = params['title']
	@movie.director = params['director']
	@movie.year = params['year']
	store.save(@movie)
	redirect '/movies/new'
end

# удаление фильма
get('/movies/delete') do
	erb :delete
end

post('/movies/deletes') do
	@movie = Movie.new
	@movie.id = params['id'].to_i
	store.delete(@movie)
	redirect '/movies/delete'
end

# Изменить информацию о фильме
get('/movies/change') do
	erb :change
end

post('/movies/changes') do
	@movie = Movie.new
	@movie.title = params['title']
	@movie.director = params['director']
	@movie.year = params['year']
	@movie.id = params['id'].to_i
	store.change(@movie)
	redirect '/movies/change'
end

# Этот маршрут должен быть всегда последним !!!
# Почему это важно? Запрос обрабатывается первым
# маршрутом сенатора, соответствующим этому запросу. Все остальные маршруты игнорируются.
# короче говоря,если он будет не в самом низу, он может что-нить сломать
get('/movies/:id') do
	id = params['id'].to_i
	@movie = store.find(id)
	erb :show
end
# в приложении сначала должны определяться
# более конкретные маршруты сенатора, а менее конкретные должны
# определяться после них. Если какой-либо маршрут содержит именован-
# ные параметры, вероятно, он должен определяться среди последних.