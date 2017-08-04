class Book < ActiveRecord::Base
  VALID_ISBN_REGEX = /\A[0-9]+-[0-9]+-[0-9]+-[0-9]+-[0-9]+\z/
  VALID_DATE_REGEX = /\A[0-2]{1}[0-9]{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])\z/
  validates :title, presence: true, length:{ maximum: 100 }
  validates :author, presence: true, length:{ maximum: 100 }
  validates :isbn, format:{ with: VALID_ISBN_REGEX }, length: { is: 17 }
  validates :status, presence: true
  validates :summary, presence: true, length:{ maximum: 200 }
#  validates :published, presence: true, format:{ with: VALID_DATE_REGEX }
  validates :published, presence: true
#  validates :modified, presence: true, format:{ with: VALID_DATE_REGEX }
  validates :modified, presence: true
end
