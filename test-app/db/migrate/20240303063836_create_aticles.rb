class CreateAticles < ActiveRecord::Migration[7.1]
  def change
    create_table :aticles do |t|
      t.string :title
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
