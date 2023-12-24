class CreateFleamarketProductInteresteds < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarket_product_interesteds do |t|
      t.belongs_to :user
      t.belongs_to :fleamarket_product

      t.timestamps
    end
  end
end
