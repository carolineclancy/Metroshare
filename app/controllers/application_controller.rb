require './config/environment'
require './app/models/tweets'

class ApplicationController < Sinatra::Base #inheriting all sorts of info

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

    erb :metro_share
  end

  post '/metrosharers' do
    new_post = Post.new(params[:user], params[:message])
    redirect ('/')
  end
end
