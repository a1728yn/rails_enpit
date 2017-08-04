# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#require "date"


50.times do
#  from = Date.parse("2000/01/01")
#  to   = Date.parse("2000/12/31")

  title = Faker::Book.title
  author = Faker::Book.author
  isbn = "1-234-5678-9123-4"
  status = "on_loan"
  summary = Faker::Lorem.sentence
#  published = Random.rand(from .. to)
  published = "1990-08-09"
#  modified = Random.rand(from .. to)
  modified = "2017-08-09"
  
  Book.create(title: title, author: author, isbn: isbn, status: status, summary: summary, published: published, modified: modified)
end 
