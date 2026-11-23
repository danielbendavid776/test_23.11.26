from db import *

movies = run_query_select("""SELECT * FROM movies""")
for movie in movies:
    print(movie)

user_movie = input("Enter movie name: ")
result = run_query_select("""SELECT * FROM movies WHERE movie_name LIKE ?""", ('%' + user_movie + '%',))
for movie in result:
    print(movie)

name = input("Enter movie name: ")
genre = input("Enter genre: ")
country = input("Enter country: ")
language = input("Enter language: ")
year = input("Enter year: ")
revenue = input("Enter revenue: ")

run_update_query("""INSERT INTO movies (movie_name, genre, country, language, year, revenue) VALUES (?, ?, ?, ?, ?, ?)""", (name, genre, country, language, year, revenue))
print('movies added')