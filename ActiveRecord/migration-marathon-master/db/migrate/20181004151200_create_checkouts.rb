class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      # t.integer :book_id, null: false or...
      t.belongs_to :book, null: false
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
