class NotesController < ApplicationController
  def show
    @note = Note.new(title: "nadpis", body: "telo")
  end
end
