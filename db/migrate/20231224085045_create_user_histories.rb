class CreateUserHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :user_histories do |t|

      t.timestamps
    end
  end
end
