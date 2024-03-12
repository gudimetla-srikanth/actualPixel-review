class Thress < ActiveRecord::Migration[7.1]
  def change
    create_table :threes do |t|
      t.integer :one_id
      t.integer :two_id
      t.timestamps
    end
  end
end
