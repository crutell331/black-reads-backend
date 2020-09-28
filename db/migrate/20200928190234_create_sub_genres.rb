class CreateSubGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_genres do |t|
      t.string :name
      t.belongs_to :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
