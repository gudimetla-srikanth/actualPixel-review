class AddColumn < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :category_id, :string
  end
end
