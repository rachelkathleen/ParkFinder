require_relative '../../config/environment'

class NoteController < ApplicationController

  get '/notes' do
      @items = Item.all
      erb :'note_views/notes'
  end

  get '/notes/new' do
    erb :'note_views/new'
  end

  post '/notes/new' do
    @note = Note.new(title: params[:title], content: params[:content])
    #how to add user_id and park_id?
    if @note.save
        redirect "/notes/#{@note.id}"
    else
        erb :'note_views/new'
    end
  end

  get '/notes/:id' do
    @note = Note.find(params[:id])
    erb :'note_views/show'
  end

  get '/notes/:id/edit' do
    @note = Note.find(params[:id])
    erb :'note_views/edit'
  end

  patch '/notes/:id' do
    @note = Note.find(params[:id])
    if @item.update(title: params[:title], content: params[:content])
      redirect "/note_views/#{@note.id}"
    else
      erb :'note_views/edit'
    end
  end

  delete '/notes/:id' do
    @note = Note.find(params[:id])

    if @note.delete
      redirect '/notes'
    else
      redirect "/notes/#{@note.id}"
    end
  end
end
