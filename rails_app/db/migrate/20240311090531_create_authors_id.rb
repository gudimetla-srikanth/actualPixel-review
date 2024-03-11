class CreateAuthorsId < ActiveRecord::Migration[7.1]
  def change
    create_table :authors_ids do |t|
      add_column :articles , :user_id , :int
      t.timestamps
    end
  end
end
