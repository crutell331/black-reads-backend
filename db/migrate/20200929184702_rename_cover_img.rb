class RenameCoverImg < ActiveRecord::Migration[6.0]
  def change
    rename_column :books, :cover_img, :img
  end
end
