class GameReviewer
  attr_reader :user, :video_game
  attr_accessor :video_game_reviews
  # here will be your CLI!
  # it is not an AR class so you need to add attr

  def run
    welcome
    login_or_signup
    find_video_game
    create_review
    read_all_reviews
    update_review
    read_all_reviews
    delete_user
  end

  def welcome
    puts "🕹 🕹 🕹 Ready Reviewer 1 🕹 🕹 🕹"
    sleep(1)
    puts "Game ON!!!"
  end

  def login_or_signup
    puts "Enter username to make review or signup"
    answer = gets.chomp.downcase
    @user = User.find_or_create_by(name: answer)
    sleep(1)
    puts "Welcome #{@user.name.capitalize}!"
  end


  
  def find_video_game
        puts "Which game would you want to review?"
        sleep(3)
        VideoGame.all.each do |video_game|
          puts video_game.title
        end
        answer1 = gets.chomp.downcase
        @video_game = VideoGame.find_or_create_by(title: answer1)
        sleep(1)
        puts "You selected #{@video_game.title.titleize}!"
      end

  def create_review
    puts "How did you feel about #{@video_game.title.capitalize}? Rate 1-10"
    answer2 = gets.chomp.to_i
    @video_game_review = VideoGameReview.create(video_game_rating: answer2, user_id: @user.id, video_game_id: @video_game.id)
    sleep(1)
    puts "Thank you for your review of #{@video_game.title.capitalize} with a rating of #{@video_game_review.video_game_rating}!"
  end


    def read_all_reviews
    puts "Would you like to see all of your reviews? yes/no"
    answer6 = gets.chomp
    if answer6 == "yes"
    @user.video_game_reviews.each do |review|
      puts "You reviewed #{review.video_game.title} and gave it a rating of #{review.video_game_rating}!"
        # puts "You reviewed #{review.id}"
        # puts "you rated #{review.video_game_rating}"
        # puts "title: #{review.video_game.title}"
      end
    else
      puts "Great!"
    end
  end
      #look at all reviews that @user has and print to the screen.

  def update_review
    puts "Would you like to update any of your reviews? yes/no"
    answer4 = gets.chomp.downcase
    if answer4 == "yes"
      puts "What game would you want to choose?"
      answer5 = gets.chomp
      videogame = VideoGame.find_by(title: answer5)
      review = VideoGameReview.find_by(video_game_id: videogame.id, user_id: @user.id)
      puts "You gave #{videogame.title} a rating of #{review.video_game_rating}. What would you like to change it to?"
      new_review = gets.chomp.to_i
      review.update(video_game_rating: new_review)
      system "reload"
      @user.reload
      puts "Thank you for updating #{videogame.title} with a rating of #{review.video_game_rating}!"
    else
      puts "Great!"
    end
  end

  def delete_user
    puts "#{@user.name.capitalize}, are you happy with your service?"
    answer6 = gets.chomp.downcase
    if answer6 == "yes" 
      puts "Great!, enjoy your day!!!"
      exit
    else 
      @user.destroy
      puts "🔥 🔥 🔥 GAME OVER!!! 🔥 🔥 🔥"
      sleep(5)
      exit
    end
  end
end











# class GameReviewer
#   attr_reader :user, :video_game
#   attr_accessor :video_game_reviews
#   # here will be your CLI!
#   # it is not an AR class so you need to add attr

#   def run
#     welcome
#     login_or_signup
#     find_video_game
#     create_review
#     read_review
#     find_video_game
#     create_review
#     read_all_reviews
#     update_review
#     read_all_reviews
#     delete_user
#   end

#   def read_all_reviews
#     puts "Would you like to see all of your reviews? yes/no"
#     answer6 = gets.chomp
#     if answer6 == "yes"
#     @user.video_game_reviews.each do |review|
#       puts "You reviewed #{review.video_game.title} and gave it a rating of #{review.video_game_rating}!"
#         # puts "You reviewed #{review.id}"
#         # puts "you rated #{review.video_game_rating}"
#         # puts "title: #{review.video_game.title}"
#       end
#     else
#       puts "Great!"
#     end
#   end
#       #look at all reviews that @user has and print to the screen.


#   def welcome
#     puts "🕹 🕹 🕹 Ready Reviewer 1 🕹 🕹 🕹"
#     sleep(1)
#     puts "Game ON!!!"
#   end

#   def login_or_signup
#     puts "Enter username to make review or signup"
#     answer = gets.chomp.downcase
#     @user = User.find_or_create_by(name: answer)
#     sleep(1)
#     puts "Welcome #{@user.name.capitalize}!"
#   end

  
#   def find_video_game
#     puts "Which game would you want to review?"
#     sleep(3)
#     VideoGame.all.each do |video_game|
#       puts video_game.title
#     end
#     answer1 = gets.chomp.downcase
#     @video_game = VideoGame.find_or_create_by(title: answer1)
#     sleep(1)
#     puts "You selected #{@video_game.title.titleize}!"
#   end

#   def create_review
#     puts "How did you feel about #{@video_game.title.capitalize}? Rate 1-10"
#     answer2 = gets.chomp.to_i
#     @video_game_review = VideoGameReview.create(video_game_rating: answer2, user_id: @user.id, video_game_id: @video_game.id)
#     sleep(1)
#     puts "Thank you for your review of #{@video_game.title.capitalize} with a rating of #{@video_game_review.video_game_rating}!"
#     sleep(3)
#   end

#   def read_review
#     puts "Would you like to see your review of #{@video_game.title.capitalize}?"
#     answer3 = gets.chomp.downcase
#     if answer3 == "yes"
#       puts "You reviewed #{@video_game.title.capitalize} with a rating of #{@video_game_review.video_game_rating}!"
#     else
#       puts "Have a nice day!!!"
#     end
#     sleep(3)
#   end

#   def update_review
#     puts "Would you like change any of your reviews?"
#     answer4 = gets.chomp.downcase
#     if answer4 == "yes"
#       puts "What game would you like to change?"
#       answer5 = gets.chomp.downcase
#       @user.video_game_reviews.find do { |change| change.title == answer5 }
#       binding.pry
       
#   end

#   def delete_user
#     puts "#{@user.name.capitalize}, are you happy with your service?"
#     answer6 = gets.chomp.downcase
#     if answer6 == "yes" 
#       puts "Great!, enjoy your day!!!"
#       exit
#     else 
#       @user.destroy
#       puts "🔥 🔥 🔥 GAME OVER!!! 🔥 🔥 🔥"
#       sleep(5)
#       exit
#     end
#   end
# end

# def read_review
  #   puts "Would you like to see your review of #{@video_game.title.capitalize}?"
  #   answer3 = gets.chomp.downcase
  #   if answer3 == "yes"
  #     puts "You reviewed #{@video_game.title.capitalize} with a rating of #{@video_game_review.video_game_rating}!"
  #   else
  #     puts "Have a nice day!!!"
  #   end
  # end