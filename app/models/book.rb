class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :isbn, presence: true
  validates :status, presence: true
  validates :summary, presence: true
  validates :published, presence: true
  validates :modified, presence: true
end
