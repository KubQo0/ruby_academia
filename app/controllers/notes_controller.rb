class NotesController < ApplicationController
  before_action :set_note, only: [ :show, :edit, :update, :destroy ]
  def show
  end

  def index
    @notes = Note.all
  end
  def new
    @note = Note.new
  end
  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to note_url(@note)
    else
      render "new", status: :unprocessable_entity
    end
  end
  def edit
  end
  def update
    if @note.update(note_params)
      redirect_to note_url(@note)
    else
      render "edit", status: :unprocessable_entity
    end
  end
  def destroy
    @note.destroy
    redirect_to notes_url
  end

  private
  def note_params
    params.require(:note).permit(:title, :body)
  end
  def set_note
    @note = Note.find(params[:id])
  end
end
