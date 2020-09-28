class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :firstname
      t.string :lastname
      t.string :img
      t.string :bio

      t.timestamps
    end
  end
end
