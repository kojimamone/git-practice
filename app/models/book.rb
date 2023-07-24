class Book < ApplicationRecord

  validates :title, presence: true
  validates :body, presence: true

  def self.get_all_books
    Book.all
  end
end
