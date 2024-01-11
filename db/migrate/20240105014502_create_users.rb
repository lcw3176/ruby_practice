class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users, id: :bigint, primary_key: [:id] do |t|
      t.bigint :id, null: false, auto_increment: true
      t.float :manner_degree, default: 36.5
      t.integer :status, default: User.statuses[:normal]
      t.string :phone_number
      t.belongs_to :address_code # 유저 집주소
      t.belongs_to :trade_region # 게시글 노출 지역

      t.string :nickname

      t.timestamps
    end
  end
end
