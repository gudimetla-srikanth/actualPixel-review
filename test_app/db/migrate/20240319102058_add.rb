class Add < ActiveRecord::Migration[7.1]
  def change
    add_column :todos, :image_type, :string
    add_column :todos, :image_id, :integer
  end
end
