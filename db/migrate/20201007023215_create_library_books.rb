class CreateLibraryBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :library_books do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
