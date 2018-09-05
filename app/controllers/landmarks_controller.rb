class LandmarksController < ApplicationController
  get '/landmarks' do
    erb :'/landmarks/index'
  end
  
  post '/landmarks' do
    @landmark = Landmark.create(params[:landmark])
    erb :'/landmarks'
  end

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end
  
  get '/landmarks/:id' do
    erb :'/landmarks/show'
  end
  
end
