class VideoGame < ActiveRecord::Base
  
  
  has_many :video_game_reviews
  has_many :users, through: :video_game_reviews


#   @user.video_game_reviews.find do |change|
#     change.user.video_games.find_by(title: answer5)
#     puts "You wish to change your review of #{answer5}?"
#     answer7 = gets.chomp.downcase
#     if answer7 == "yes"
#       puts "What would you like to change the rating of #{answer5} to?"
#       answer8 = gets.chomp.to_i
#       change.user.video_games.find_by(title: answer5).video_game_reviews.update(video_game_rating: answer8)
#       puts "you changed #{@video_game.title.titleize} to #{@video_game_review.video_game_rating}!"
#     else 
#       puts "Not a Problem!"
#     end
#      #change.user.video_games.find_by(title: answer5).video_game_reviews.update(video_game_rating: answer8)
#   end
#   #@video_game_review.update(video_game_rating: answer5)
#   puts "Thank you for the update of #{@video_game.title.capitalize} to #{@video_game_review.video_game_rating}!"
# else 
#   puts "Great news!!!!"
#   exit
# end

end
