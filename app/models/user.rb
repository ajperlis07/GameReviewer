class User < ActiveRecord::Base

has_many :video_game_reviews
has_many :video_games, through: :video_game_reviews


end
