class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users, id: :bigint, primary_key: [:id] do |t|
      t.bigint :id, null: false
      t.float :manner_degree, default: 36.5
      t.integer :status
      t.string :phone_number
      t.string :address
      t.string :nickname

      t.timestamps
    end
  end
end
