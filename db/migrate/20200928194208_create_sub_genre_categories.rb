class CreateSubGenreCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_genre_categories do |t|
      t.belongs_to :sub_genre, null: false, foreign_key: true
      t.belongs_to :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
