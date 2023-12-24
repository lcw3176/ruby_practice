class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|

      t.string :nickname, null: false, default: ''
      t.float :manner_degree, null: false, default: 36.5

      t.timestamps
    end
  end
end
