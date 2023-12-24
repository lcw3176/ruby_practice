class CreateFleamarketTrades < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarket_trades do |t|

      t.references :seller, foreign_key: { to_table: :user }
      t.references :buyer, foreign_key: { to_table: :user }
      t.integer :trade_status

      t.timestamps
    end
  end
end
