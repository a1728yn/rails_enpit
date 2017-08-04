# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#require "date"

def rand(i)
  ans = ''
  i.times do
    ans += Random.rand(1..9).to_s    
  end
  return ans
end

def randomIsbn()
  str = ''
  str += rand(1)
  str += '-'
  str += rand(3)
  str += '-'
  str += rand(4)
  str += '-'
  str += rand(4)
  str += '-'
  str += rand(1)
  return str
end

def getStatus()
  temp = Random.rand(1..10)
  if ( 7 > temp ) then
    return 'lendable'
  else
    return 'on_loan'
  end
end


50.times do
  title = Faker::Book.title
  author = Faker::Book.author
  isbn = randomIsbn() 
  status = getStatus()
  summary = Faker::Lorem.sentence
  published = Faker::Time.between(20.years.ago, 5.years.ago, :all).to_s[0, 10]
  modified = Faker::Time.between(4.years.ago, 0.years.ago, :all).to_s[0, 10]
  
  Book.create(title: title, author: author, isbn: isbn, status: status, summary: summary, published: published, modified: modified)
end 
