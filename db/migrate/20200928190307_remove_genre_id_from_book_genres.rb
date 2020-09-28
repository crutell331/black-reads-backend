class RemoveGenreIdFromBookGenres < ActiveRecord::Migration[6.0]
  def change
    remove_column :book_genres, :genre_id
  end
end
