class SubGenre < ApplicationRecord
  belongs_to :genre
  has_many :book_sub_genres
  has_many :books, through: :book_sub_genres
  has_many :authors, through: :books
end
