require_relative 'film'
path = "./data"
film_arr = []
director_arr = []
title_arr = []
# Собрать в массив пути ко всем файлам с фильмами
# Перебором массива создать для каждого файла свой объект класса film
Dir.glob("#{path}/*.txt") do |file|
  # Собрать в массив объекты класса фильм
  film = Film.new file
  film_arr << film
  # Перебирая массив фильмов отобрать в массив только имена режиссеров
  director_arr << film.director
end
puts "Какого режиссера хотите посмотеть? Введите номер."
# Вывести список всех уникальных режиссеров
director_arr.uniq.each_with_index do |director, i|
  puts "#{i+1}. #{director}"
end
# Запросить номер режиссера
user_input = STDIN.gets.to_i
chosen_director = director_arr.uniq[user_input - 1]
# Перебрать массив фильмов и вывести только фильмы данного режиссера
puts "Список фильмов этого режиссера:"
film_arr.each do |film|
  if film.director == chosen_director
    puts "#{film.title} (#{film.year})"
    title_arr << film.title
  end
end
# Вывести случайный фильм данного режиссера
puts "Предлагаем вам посмотреть #{title_arr.sample}\n\n"

