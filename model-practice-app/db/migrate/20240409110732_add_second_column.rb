class AddSecondColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :books, :patron_id,:author_id
  end
end
