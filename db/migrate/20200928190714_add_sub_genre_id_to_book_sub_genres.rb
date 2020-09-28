class AddSubGenreIdToBookSubGenres < ActiveRecord::Migration[6.0]
  def change
    add_column :book_sub_genres, :sub_genre_id, :integer
  end
end
