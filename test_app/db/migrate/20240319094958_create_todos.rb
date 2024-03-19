class CreateTodos < ActiveRecord::Migration[7.1]
  def change
    create_table :todos do |t|
      t.string :todo
      t.integer :teacher_id
      t.timestamps
    end
  end
end
