
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    'welcome'
  end

  get '/students' do
    @students =  ['Andrew', 'Alice', 'Justin', 'Nathan']
    erb :index
  end
  
end
