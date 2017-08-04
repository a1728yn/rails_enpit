# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


50.times do
  title = Faker::Book.title
  author = Faker::Book.author
  isbn = "1-234-5678-9123-4"
  status = "on_loan"
  summary = Faker::Lorem.sentence
  published = "2017-08-09"
  modified = "2017-08-10"
  
  Book.create(title: title, author: author, isbn: isbn, status: status, summary: summary, published: published, modified: modified)
end 
