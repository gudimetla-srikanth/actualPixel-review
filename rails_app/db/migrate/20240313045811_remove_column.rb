class RemoveColumn < ActiveRecord::Migration[7.1]
  def change
    remove_column :teachers, :teacher_id
  end
end
