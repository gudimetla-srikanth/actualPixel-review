class CreateMarkss < ActiveRecord::Migration[7.1]
  def change
    create_table :markss do |t|
      t.integer  :student_id 
      t.integer  :teacher_id
      t.timestamps
    end
  end
end
