class CreateFleamarketPostChecks < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarket_post_checks do |t|
      t.references :fleamarket_post, null: false, foreign_key: true
      t.integer :count

      t.timestamps
    end
  end
end
