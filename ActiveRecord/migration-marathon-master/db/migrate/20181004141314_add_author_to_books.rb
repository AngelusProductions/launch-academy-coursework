class AddAuthorToBooks < ActiveRecord::Migration
  def change
    add_column :books, :author, :string, null: false
  end
end
