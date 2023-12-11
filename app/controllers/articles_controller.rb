class ArticlesController < ApplicationController
  def index
    @noteTexts=NoteApp.all #ここで変数noteTextにDBのテーブルのnoteTexが読めるはず
  
  end

  def new
    @noteText = NoteApp.new
  end

  def create
    @noteText = NoteApp.new(note_params)

    if @noteText.save
      puts 'Note created successfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def note_params
      params.require(:note_apps).permit(:noteText)
    end
end
