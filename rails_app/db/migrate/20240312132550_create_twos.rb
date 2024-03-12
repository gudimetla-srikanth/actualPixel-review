class CreateTwos < ActiveRecord::Migration[7.1]
  def change
    create_table :twos do |t|
      t.string :two_name
      t.timestamps
    end
  end
end
