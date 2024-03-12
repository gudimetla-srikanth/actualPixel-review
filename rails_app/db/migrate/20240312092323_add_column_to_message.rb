class AddColumnToMessage < ActiveRecord::Migration[7.1]
  def change
    add_column :messages , :user_id , :int
  end
end
