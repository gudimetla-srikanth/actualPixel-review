class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :name 
      t.string :password_digest
      t.timestamps
    end
  end
end
