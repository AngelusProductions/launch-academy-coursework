class CreatePursuits < ActiveRecord::Migration[5.2]
  def change
    create_table :pursuits do |t|
      t.belongs_to :user, null: false
      t.belongs_to :project, null: false

      t.timestamps null: false
    end
  end
end
