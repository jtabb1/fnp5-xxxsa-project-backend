class CreateStarterTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :starter_todos do |t|
      t.belongs_to :starter_type, null: false, foreign_key: true
      t.string :todo_name
      t.string :todo_notes

      t.timestamps
    end
  end
end