class UpdateVideoGameRatingToInteger < ActiveRecord::Migration[5.2]
  def change
    remove_column :video_game_reviews, :video_game_rating, :string
    add_column :video_game_reviews, :video_game_rating, :integer
  end
end
