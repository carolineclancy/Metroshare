class User
  attr_accessor :name

  NAME = []

  def initialize(name)
    @name = name
    NAME << self
  end


  def self.show_name
    NAME
  end


end

class Post
  attr_accessor :user, :message, :time, :location

  ALL_MESSAGES = []

  def initialize(user, message, time, location)
    @user = user
    @message = message
    @time = time
    @location = location
    ALL_MESSAGES << self
  end

  def self.show_all_messages
    ALL_MESSAGES
  end

end