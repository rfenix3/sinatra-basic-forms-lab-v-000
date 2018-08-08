require_relative 'config/environment'
require_relative 'models/puppy.rb'


class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/piglatinize' do
    pl = Piglatinize.new
    @piglatin = pl.piglatinize(params[:user_phrase])
    erb :results
  end
end
