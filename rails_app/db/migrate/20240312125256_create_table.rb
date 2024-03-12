class CreateTable < ActiveRecord::Migration[7.1]
  def change
    create_join_table :users, :messages
  end
end
