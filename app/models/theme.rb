class Theme < ApplicationRecord
    has_many :book_themes, dependent: :destroy
    has_many :books, through: :book_themes
end
