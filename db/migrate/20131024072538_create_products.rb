class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :image
      t.string :location
      t.column :price, 'decimal(10,2)'
      t.string :status
      t.string :action
      t.string :platform
      t.string :url
      t.string :seller
      t.references :brand

      t.timestamps
    end
    add_index :products, :brand_id
  end
end
