# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

2.times do |i|
  author = Author.create(name: "author_#{i}")
  2.times do |j|
    book = author.books.create(name: "book_#{i}_#{j}")
    2.times do |k|
      book.tags.create(name: "book_tag_#{k}")
    end
  end
  2.times do |k|
    author.tags.create(name: "author_tag_#{k}")
  end
end
