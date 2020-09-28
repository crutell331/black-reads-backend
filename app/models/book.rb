class Book < ApplicationRecord
  belongs_to :author
  has_many :book_sub_genres
  has_many :sub_genres, through: :book_sub_genres
  has_many :genres, through: :sub_genres
  has_many :book_themes
  has_many :themes, through: :book_themes
end
