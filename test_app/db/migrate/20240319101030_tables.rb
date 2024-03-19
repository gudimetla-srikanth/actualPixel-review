class Tables < ActiveRecord::Migration[7.1]
  def change
    add_column :todos, :student_id, :integer
  end
end
