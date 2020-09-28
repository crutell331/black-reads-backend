class Author < ApplicationRecord
    has_many :books, dependent: :destroy
    has_many :sub_genres, through: :books
    has_many :genres, through: :sub_genres
    has_many :book_themes, through: :books
    has_many :themes, through: :book_themes
end
