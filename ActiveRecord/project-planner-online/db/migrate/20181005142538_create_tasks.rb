class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.text :description
      t.date :due_date
      t.integer :user_id
      t.belongs_to :project, null: false

      t.timestamps null: false
    end
  end
end
