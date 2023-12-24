class CreateUserStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :user_statuses do |t|
      t.bigint :user_status_id
      t.belongs_to :user, foreign_key: true

      t.integer :status_type
      t.timestamps
    end
  end
end
