require './config/environment'
require './app/models/metro_share'

class ApplicationController < Sinatra::Base #inheriting all sorts of info

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @messages = Post.show_all_messages
    
    erb :metro_share
  end

  post '/metrosharers' do
    new_post = Post.new(params[:user], params[:message], params[:time])
    redirect ('metrosharers')
  end

  get '/metrosharers' do
    @messages = Post.show_all_messages
    erb :metro_share
  end
end
