class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :purchase_price
      t.integer :sale_price
      t.integer :stock_quantity, default: 0

      t.timestamps
    end
  end
end
