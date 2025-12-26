class CreateOrderItems < ActiveRecord::Migration[7.2]
  def change
    create_table :order_items do |t|
      t.references :venda, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantidade

      t.timestamps
    end
  end
end
