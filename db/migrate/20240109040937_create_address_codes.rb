class CreateAddressCodes < ActiveRecord::Migration[7.1]
  def change
    create_table :address_codes do |t|
      t.integer :code

      t.timestamps
    end
  end
end
