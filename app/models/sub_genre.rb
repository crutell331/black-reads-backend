class SubGenre < ApplicationRecord
  has_many :sub_genre_categories, dependent: :destroy
  has_many :genres, through: :sub_genre_categories
  has_many :book_sub_genres, dependent: :destroy
  has_many :books, through: :book_sub_genres
  has_many :authors, through: :books

  def books_with_authors
    self.books.map do |book|
      new_book_hash = {title: book.title, summary:book.summary, year_published: book.year_published, img: book.img, author_name:book.author_name }
    end
  end
end
