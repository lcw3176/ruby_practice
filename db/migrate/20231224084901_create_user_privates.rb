class CreateUserPrivates < ActiveRecord::Migration[7.1]
  def change
    create_table :user_privates do |t|
      t.belongs_to :user

      t.string :phone_number, null: false, default: ''
      t.string :address, null: false, default: ''

      t.timestamps
    end
  end
end
