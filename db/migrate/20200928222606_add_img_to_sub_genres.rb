class AddImgToSubGenres < ActiveRecord::Migration[6.0]
  def change
    add_column :sub_genres, :img, :string
  end
end
