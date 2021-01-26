class CreateJoinerTableVideoGameReview < ActiveRecord::Migration[5.2]
  def change
    create_table :video_game_reviews do |t|
      t.integer :user_id
      t.integer :video_game_id
      t.string :video_game_rating
    end
  end
end
