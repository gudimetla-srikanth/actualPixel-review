class CreateJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_join_table :users,:customers
  end
end
