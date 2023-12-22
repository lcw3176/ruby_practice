class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users, :primary_key => :user_id do |t|
      t.bigint :user_id

      t.string :nickname
      t.float :manner_degree

      t.datetime :created_date
      t.datetime :modified_date

      t.timestamps
    end
  end
end
