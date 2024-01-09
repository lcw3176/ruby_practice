class CreateFleamarketAddressMatchers < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarket_address_matchers do |t|
      t.belongs_to :fleamarket_article, null: false, foreign_key: true # 중고거래 게시글 아이디
      t.belongs_to :address_code, null: false, foreign_key: true # 주소 코드

      t.timestamps
    end
  end
end
