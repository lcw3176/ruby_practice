class CreateUserPrivates < ActiveRecord::Migration[7.1]
  def change
    create_table :user_privates do |t|

      t.timestamps
    end
  end
end
