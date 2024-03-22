class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :article_name 
      t.timestamps
    end
  end
end
