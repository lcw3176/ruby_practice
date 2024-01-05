class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.float :manner_degree
      t.integer :status
      t.timestamps
    end
  end
end
