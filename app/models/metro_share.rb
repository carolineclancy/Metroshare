class Post
  attr_accessor :user, :message


  def initialize(user, message)
    @user = user
    @message = message
  end

end