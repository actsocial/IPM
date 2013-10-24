class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :name
      t.string :operator
      t.string :value
      t.string :tag
      t.references :brand

      t.timestamps
    end
    add_index :rules, :brand_id
  end
end
