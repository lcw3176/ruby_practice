class CreateAddressCodes < ActiveRecord::Migration[7.1]
  def change
    create_table :address_codes, id: :bigint, primary_key: [:id] do |t|
      t.bigint :id, null: false, auto_increment: true
      t.integer :code, null: false

      t.timestamps
    end
  end
end
