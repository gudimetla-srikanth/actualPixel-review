class AddColumnToTeachers < ActiveRecord::Migration[7.1]
  def change
    add_column :teachers, :student_id, :integer
  end
end
