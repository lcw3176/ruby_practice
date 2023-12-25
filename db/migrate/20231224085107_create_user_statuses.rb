class CreateUserStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :user_statuses do |t|
      t.belongs_to :user

      t.integer :status_type
      t.timestamps
    end
  end
end
