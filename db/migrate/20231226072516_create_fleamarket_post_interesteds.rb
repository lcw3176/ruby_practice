class CreateFleamarketPostInteresteds < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarket_post_interesteds do |t|
      t.references :user, null: false, foreign_key: true
      t.references :fleamarket_post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
