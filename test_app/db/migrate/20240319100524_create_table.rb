class CreateTable < ActiveRecord::Migration[7.1]
  def change
    create_join_table :teachers, :students
  end
end
