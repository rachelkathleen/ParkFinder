require_relative '../../config/environment'
class NoteController < ApplicationController

  get '/notes' do
    @items = Item.all
    erb :'items/index' #create this view
  end

  get 'notes/new' do
    erb :'items/new' #create view
  end

  post 'notes' do
    @note = Note.new(title: params[:title], content: params[:content])
    #how to add user_id and park_id?
    if @note.save
        redirect "/notes/#{note.id}"
    else
        erb :'notes/new'
    end
  end

  get 'notes/:id' do
    @note = Note.find(params[:id])
    erb :'notes/show' #create this erb file
  end

  get 'notes/:id/edit' do
    @note = Note.find(params[:id])
    erb :'notes/edit' #create this erb file
  end

  patch 'notes/:id' do
    @note = Note.find(params[:id])
    if @item.update(title: params[:title], content: params[:content])
      redirect "/notes/#{@note.id}"
    else
      erb :'notes/edit'
    end
  end

  delete 'notes/:id' do
    @note = Note.find(params[:id])

    if @note.delete
      redirect '/notes'
    else
      redirect "/notes/#{@note.id}"
    end
  end
end
