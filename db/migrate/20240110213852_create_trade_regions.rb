class CreateTradeRegions < ActiveRecord::Migration[7.1]
  def change
    create_table :trade_regions, id: :bigint, primary_key: [:id]  do |t|
      t.bigint :id, null: false, auto_increment: true
      t.integer :code, null: false

      t.timestamps
    end
  end
end
