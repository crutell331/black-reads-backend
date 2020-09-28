class Genre < ApplicationRecord
    has_many :sub_genres
    has_many :books, through: :sub_genres
    has_many :authors, through: :books
end
