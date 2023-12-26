class CreateFleamarketTradeLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarket_trade_logs do |t|
      t.references :seller, foreign_key: { null: false, foreign_key: true, to_table: :user }
      t.references :buyer, foreign_key: { null: false, foreign_key: true, to_table: :user }
      t.references :fleamarket_post, null: false, foreign_key: true
      t.integer :trade_status

      t.timestamps
    end
  end
end
