class CreateOnes < ActiveRecord::Migration[7.1]
  def change
    create_table :ones do |t|
      t.string :one_name
      t.timestamps
    end
  end
end
