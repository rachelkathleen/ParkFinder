require_relative '../../config/environment'
class NoteController < ApplicationController

  get '/notes' do
    #display all notes
  end

  get 'notes/new' do
    #create a new note
  end

  post 'notes' do
    #Creates a note in DB, and then typically redirects
  end

  get 'notes/:id' do
    #Show info about specific note
  end

  get 'notes/:id/edit' do
    #show form to edit a specific note
  end

  patch 'notes/:id' do
    #edit note in DB the redirects
  end

  delete 'notes/:id' do
    #deletes a note in the DB then redirects
  end

end
