# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  {username:"Josh"},
  {username: "Kelly"}
])

books = Book.create([
  {title: "Harry Potter and the Prisoner of Azkaban", author: "J.K. Rowling", image: "http://books.google.com/books/content?id=Sm5AKLXKxHgC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", user_id: 1},
  {title: "Harry Potter - A Journey Through A History of Magic", author: "British Library", image: "http://books.google.com/books/content?id=ilc0DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", user_id: 1}
])

lendings = Lending.create([
  {book_id: 1, borrower_id: 2, lend_date: "2018-05-01", status: "active"},
  {book_id: 2, borrower_id: 2, lend_date: "2018-05-01", status: "active"}
])

friends = Friendship.create([
  {user_id: 1, friend_id: 2}
])
