class Genre < ApplicationRecord
    has_many :sub_genre_categories, dependent: :destroy
    has_many :sub_genres, through: :sub_genre_categories
    has_many :books, through: :sub_genres
    has_many :authors, through: :books
end
