class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2
      t.date :expiraton_date
      t.decimal :purchase_price, precision: 8, scale: 2
      t.integer :the_amount

      t.timestamps
    end
  end
end
