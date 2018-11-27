class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.belongs_to :book, null: false
      t.belongs_to :category, null: false
      t.timestamps null: false
    end
  end
end
