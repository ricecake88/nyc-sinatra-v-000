class LandmarksController < ApplicationController
  get '/landmarks' do
    erb :'/landmarks/index'
  end
  
  post '/landmarks' do
    @landmark = Landmark.create(params[:landmark])
    @landmark.save
    redirect to "/landmarks/#{@landmark.id}"
  end

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end
  
  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/show'
  end
  
  get '/landmarks/:id/edit' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/edit'
  end
  
end
