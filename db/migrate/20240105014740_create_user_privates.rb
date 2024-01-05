class CreateUserPrivates < ActiveRecord::Migration[7.1]
  def change
    create_table :user_privates do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :phone_number
      t.string :address
      t.string :nickname

      t.timestamps
    end
  end
end
