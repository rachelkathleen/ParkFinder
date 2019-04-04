require_relative '../../config/environment'

class NoteController < ApplicationController

  use Rack::Flash

  get '/notes' do
      @notes = Note.all
      erb :'note_views/notes'
  end

  get '/notes/new' do
    erb :'note_views/new'
  end

  post '/notes/new' do
    @note = Note.new(params)
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
    if @note.user_id == current_user.id
      erb :'note_views/edit'
    else
      redirect 'user_page'
  end

  patch '/notes/:id' do
    @note = Note.find(params[:id])
    if @note.update(title: params[:title], content: params[:content])
      redirect "/notes/#{@note.id}"
    else
      erb :'note_views/edit'
    end
  end

  delete '/notes/:id' do
    @note = Note.find(params[:id])
    if @note.delete
      redirect '/user_page'
    else
      redirect "/notes/#{@note.id}"
    end
  end
end
