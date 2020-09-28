class AddCoverImgToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :cover_img, :string
  end
end
