class RemoveFirstNameLastNameFromAuthor < ActiveRecord::Migration[6.0]
  def change
    remove_column :authors, :firstname
    remove_column :authors, :lastname
  end
end
