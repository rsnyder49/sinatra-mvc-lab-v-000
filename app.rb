require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    @user_input = params[:input]
    @piglatin = PigLatinizer.new
    erb :piglatinize
  end 
  
end