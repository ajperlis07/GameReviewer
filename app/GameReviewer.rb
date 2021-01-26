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
    read_review
    update_review
    # exit
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
    answer1 = gets.chomp.downcase
    @video_game = VideoGame.find_or_create_by(title: answer1)
    sleep(1)
    puts "You selected #{@video_game.title.capitalize}!"
  end

  def create_review
    puts "How did you feel about #{@video_game.title.capitalize}? Rate 1-10"
    answer2 = gets.chomp.to_i
    @video_game_review = VideoGameReview.create(video_game_rating: answer2, user_id: @user.id, video_game_id: @video_game.id)
    sleep(1)
    puts "Thank you for your review of #{@video_game.title.capitalize} with a rating of #{@video_game_review.video_game_rating}!"
  end

  def read_review
    puts "Would you like to see your review of #{@video_game.title.capitalize}?"
    answer3 = gets.chomp.downcase
    if answer3 == "yes"
      puts "You reviewed #{@video_game.title.capitalize} with a rating of #{@video_game_review.video_game_rating}!"
    else
      puts "Have a nice day!!!"
    end
  end

  def update_review
    puts "Would you like change your review of #{@video_game.title.capitalize}?"
    answer4 = gets.chomp.downcase
    if answer4 == "yes"
      puts "What would you like to change the rating to?"
      answer5 = gets.chomp.to_i
      #binding.pry
      @video_game_review.update(video_game_rating: answer5)
      puts "Thank you for the update of #{@video_game.title.capitalize} to #{@video_game_review.video_game_rating}!"
    else 
      puts "Enjoy your day!"
    end
  end

  private

  
end
