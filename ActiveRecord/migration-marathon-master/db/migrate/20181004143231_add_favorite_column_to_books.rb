class AddFavoriteColumnToBooks < ActiveRecord::Migration
  def change
    add_column :books, :favorite, :boolean, default: false
  end
end
