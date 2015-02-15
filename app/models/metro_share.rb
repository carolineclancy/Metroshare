class Post
  attr_accessor :user, :message, :time

  ALL_MESSAGES = []

  def initialize(user, message, time)
    @user = user
    @message = message
    @time = time
    ALL_MESSAGES << self
  end

  def self.show_all_messages
    ALL_MESSAGES
  end

end