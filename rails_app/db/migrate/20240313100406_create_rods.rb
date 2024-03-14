class CreateRods < ActiveRecord::Migration[7.1]
  def change
    create_table :rods do |t|

      t.timestamps
    end
  end
end
