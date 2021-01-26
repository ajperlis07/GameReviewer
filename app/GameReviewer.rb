class GameReviewer
  attr_reader :user
  # here will be your CLI!
  # it is not an AR class so you need to add attr

  def run
     welcome
    login_or_signup
    # wanna_see_favs?
    # some_method(some_argument)
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

  private

  
end
