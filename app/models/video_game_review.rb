class VideoGameReview < ActiveRecord::Base
 
 
belongs_to :user
belongs_to :video_game


end
