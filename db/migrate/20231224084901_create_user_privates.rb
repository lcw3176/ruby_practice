class CreateUserPrivates < ActiveRecord::Migration[7.1]
  def change
    create_table :user_privates do |t|
      t.bigint :user_private_id
      t.belongs_to :user, foreign_key: true

      t.string :phone_number, null: false, default: ''
      t.string :address, null: false, default: ''

      t.timestamps
    end
  end
end
