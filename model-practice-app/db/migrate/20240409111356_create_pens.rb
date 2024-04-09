class CreatePens < ActiveRecord::Migration[7.1]
  def change
    create_table :pens do |t|
      t.string :pen_name

      t.timestamps
    end
  end
end
