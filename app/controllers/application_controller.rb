require './config/environment'
require './app/models/metro_share'

class ApplicationController < Sinatra::Base #inheriting all sorts of info

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  post '/log_in' do
    new_post = Post.new(params[:user], params[:message], params[:time], params[:location])
    # @user = User.new(params[:name])
    erb :log_in
    redirect ('metrosharers')
  end

  get '/log_in' do
    @messages = Post.show_all_messages
    # @names = User.show_name
    erb :log_in
  end

  get '/' do
    @messages = Post.show_all_messages
    # @names = User.show_name
    erb :metro_share
  end

  post '/metrosharers' do
    new_post = Post.new(params[:user], params[:message], params[:time], params[:location])
    # @user = User.new(params[:name])
    # @last = @message.last.user
    erb :metro_share
    redirect ('metrosharers')
  end

  get '/metrosharers' do
    @messages = Post.show_all_messages
    # @names = User.show_name
    erb :metro_share
  end
end
