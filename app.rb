require 'sinatra/base'

class App < Sinatra::Base

# Create a route that responds to a GET request at /newteam
  get '/newteam' do
    erb :newteam
  end
  # render it in the GET /newteam route??

  post '/team' do
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @pf = params[:pf]
    @sf = params[:sf]
    @c = params[:c]

    erb :team
    # on submission, pass the data to the team.erb to render the view
  end

end
