class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.float :manner_degree
      t.integer :status
      t.string :phone_number
      t.string :address
      t.string :nickname

      t.index ["id"], name: "ix_primary_key"
      t.timestamps
    end
  end
end
