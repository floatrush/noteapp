class NotesController < ApplicationController
  def new
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      redirect_to @note
    else
      render 'new'
    end
  end

  def edit
    @note = Note.find(params[:id])

    if @note.update(note_params)
      redirect_to @note
    else
      render 'edit'
    end
  end

  def show
    @note = Note.find(params[:id])
  end

  def index
    @notes = Note.all
  end

  private
    def note_params
      params.require(:note).permit(:book, :chapter, :start_verse, :end_verse, :note_text)
    end
end
