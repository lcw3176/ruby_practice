class CreateFleamarketArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarket_articles, id: :bigint, primary_key: [:id] do |t|
      t.bigint :id, null: false, auto_increment: true # 게시글 아이디

      t.belongs_to :user, null: false, foreign_key: true # 판매자 아이디

      t.string :title # 게시글 제목
      t.string :content # 게시글 내용
      t.string :trade_address # 거래 희망 지역
      t.string :thumbnail_url, default: "https://avatars.githubusercontent.com/u/59993347?v=4" # 게시글 대표 이미지

      t.integer :price # 판매 가격
      t.integer :category # 물품 카테고리
      t.integer :trade_status, default: FleamarketArticle.trade_statuses[:sell] # 거래 진행 상태 [:done(완료), :in_progress(거래 체결,예약 중), :sell(판매 중)]
      t.integer :read_count, default: 0 # 게시글 조회수


      t.boolean :visible , default: true # 글 보이기, 숨김처리 여부

      t.timestamps
    end
  end
end
