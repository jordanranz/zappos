class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :styleId
      t.integer :productId
      t.string :brandName
      t.string :productName
      t.string :thumbnailImageUrl
      t.decimal :originalPrice
      t.decimal :price
      t.string :percentOff
      t.string :productUrl

      t.timestamps
    end
  end
end
