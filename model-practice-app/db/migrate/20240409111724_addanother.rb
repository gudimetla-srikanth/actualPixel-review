class Addanother < ActiveRecord::Migration[7.1]
  def change
    add_column :pens, :author_id, :integer
    add_column :pens, :book_id, :integer
  end
end
