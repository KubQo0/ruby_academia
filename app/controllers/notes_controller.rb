class NotesController < ApplicationController
  def show
    @note = Note.find(params[:id])
  end

  def index
    @notes = Note.all
  end
  def new
    @note = Note.new
  end
  def create
    @note = Note.create(title: params[:note][:title], body: params[:note][:body])
    redirect_to note_url(@note)
  end
  def edit
    @note = Note.find(params[:id])
  end
  def update
    @note = Note.find(params[:id])
    @note.update(title: params[:note][:title], body: params[:note][:body])
    redirect_to note_url(@note)
  end
  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to notes_url
  end
end
