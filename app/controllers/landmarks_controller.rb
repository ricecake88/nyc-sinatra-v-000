class LandmarksController < ApplicationController
  get '/landmarks' do
    erb :'/landmarks/index'
  end
  
  post '/landmarks' do
    erb :'/landmarks'
  end
  
  get '/landmarks/:id' do
    erb :'/landmarks/show'
  end
  
end
