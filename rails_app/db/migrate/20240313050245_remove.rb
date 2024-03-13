class Remove < ActiveRecord::Migration[7.1]
  def change
    remove_column :teachers, :student_id
  end
end
