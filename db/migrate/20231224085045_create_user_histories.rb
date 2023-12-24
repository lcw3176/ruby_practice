class CreateUserHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :user_histories do |t|
      t.bigint :user_history_id
      t.belongs_to :user

      t.timestamp :login_date
      t.boolean :login_status
      t.string :try_address

      t.timestamps
    end
  end
end
