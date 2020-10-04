class Book < ApplicationRecord
  belongs_to :author
  has_many :book_sub_genres, dependent: :destroy
  has_many :sub_genres, through: :book_sub_genres
  has_many :genres, through: :sub_genres
  has_many :book_themes, dependent: :destroy
  has_many :themes, through: :book_themes

  def author_name
    self.author.name
  end
end
