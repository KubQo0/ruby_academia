class NotesController < ApplicationController
  def show
    @note = Note.find(params[:id])
  end

  def index
    @notes = Note.all
  end
  def new
  end
  def create
    @note = Note.create(title: params[:title], body: params[:body])
    redirect_to note_url(@note)
  end
  def edit
    @note = Note.find(params[:id])
  end
  def update
    @note = Note.find(params[:id])
    @note.update(title: params[:title], body: params[:body])
    redirect_to note_url(@note)
  end
end
