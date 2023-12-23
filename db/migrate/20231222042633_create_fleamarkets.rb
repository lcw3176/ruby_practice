class CreateFleamarkets < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarkets, :primary_key => :fleamarket_id do |t|
      t.bigint :fleamarket_id

      t.belongs_to :users
      t.string :content
      t.integer :view_count

      t.timestamps
    end
  end
end
