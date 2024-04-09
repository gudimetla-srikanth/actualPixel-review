class AddColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :books, :author_id, :patron_id
  end
end
