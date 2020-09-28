class RenameBookGenresTable < ActiveRecord::Migration[6.0]
  def change
    rename_table :book_genres, :book_sub_genres
  end
end
