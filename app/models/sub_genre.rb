class SubGenre < ApplicationRecord
  has_many :sub_genre_categories
  has_many :genres, through: :sub_genre_categories
  has_many :book_sub_genres
  has_many :books, through: :book_sub_genres
  has_many :authors, through: :books
end
