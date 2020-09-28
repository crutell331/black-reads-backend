class Theme < ApplicationRecord
    has_many :book_themes
    has_many :books, through: :book_themes
end
