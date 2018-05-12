class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :text
      t.string :image_url
      t.integer :price

      t.timestamps
    end
  end
end
