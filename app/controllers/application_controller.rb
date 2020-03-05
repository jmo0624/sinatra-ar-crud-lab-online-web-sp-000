
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end
  
  get '/articles/new' do
    erb :new
  end
  
  get '/articles' do
    @articles = Article.all
    erb :index
  end
  
  get '/articles/:id' do
    @article = Article.find(params["id"])
    erb :show
  end
    
  get '/articles/:id/edit' do
    @article = Article.find(params["id"])
    erb :edit
  end
  
  patch '/articles/:id' do
    id = params["id"]
    new_params = {}
    old_post = Article.find(id)
    new_params[:name] = params["name"]
    new_params[:content] = params["content"]
    
    
    
end
