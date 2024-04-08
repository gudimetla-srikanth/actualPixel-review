class CreateSampledbs < ActiveRecord::Migration[7.1]
  def change
    create_table :sampledbs do |t|
      t.string :ticker_symbol
      t.text :company_name 
      t.decimal :last_price
      t.timestamps
    end
  end
end
