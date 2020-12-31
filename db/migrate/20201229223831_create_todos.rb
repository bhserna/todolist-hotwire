class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :description
      t.datetime :completed_at
      t.references :todo_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
