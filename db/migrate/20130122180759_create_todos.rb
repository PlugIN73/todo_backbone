class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.string :description
      t.date :date_to

      t.timestamps
    end
  end
end
