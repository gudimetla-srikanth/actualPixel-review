class AddColumn < ActiveRecord::Migration[7.1]
  def change
    add_column :teachers, :student_id , :integer,default: 1
  end
end
