class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :comment_name
      t.string :able_type 
      t.integer :able_id
      t.timestamps
    end
  end
end
