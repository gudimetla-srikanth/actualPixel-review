class Add < ActiveRecord::Migration[7.1]
  def change
    add_column :messages, :my_id, :int
  end
end
