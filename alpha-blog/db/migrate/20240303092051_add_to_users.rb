class AddToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :password, :text
  end
end
