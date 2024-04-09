class Addcolumnto < ActiveRecord::Migration[7.1]
  def change
    add_column :authors, :friend_id,:integer
  end
end
